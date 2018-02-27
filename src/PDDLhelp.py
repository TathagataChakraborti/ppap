#!/usr/bin/env python

'''
Topic   :: Help with PDDL files
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

'''
Import packages
'''

import re, os

'''
Global :: global variables
'''

__GROUND_CMD__  = "./ground.sh {} {} > stdout.txt"
__FD_PLAN_CMD__ = "./fdplan.sh {} {}"

'''
Method :: read domain and problem  files
'''

def read_planning_problem_from_PDDL(domainFileName, problemFileName):

    def PDDLaction(description):

        # read an individual PDDL action

        action_name            = re.search('\(:action(.*?)[\s+]*:', description).group(1).strip()

        try:    parameters     = re.search(':parameters[\s+]*\((.*?)\)[\s+]*:', description).group(1)
        except: parameters     = ""

        # read preconditions
        
        try:    preconditions  = {re.search('\(((?!not).*?)\)', item).group(1).strip() : not 'not ' in item \
                                  for item in re.findall('(\(not[\s+]*\(.*?\)[\s+]*\)|\(.*?\))',
                                                         re.search(':precondition[\s+]*\(and(.*?)\)[\s+]*:',
                                                                   description).group(1))}
        except: preconditions  = {}

        # read effects
        
        try:

            effects = {re.search('\(((?!not).*?)\)', item).group(1).strip(): not 'not ' in item \
                       for item in re.findall('(\(not[\s+]*\(.*?\)[\s+]*\)|\(.*?\))',
                                              re.search(':effect[\s+]*\(and(.*?)\)[\s+]*(\(:action|\)[\s+]*$)',
                                                        description).group(1))}
        except: effects        = {}

        action_cost = 1
        
        return [action_name, parameters, preconditions, effects, action_cost]

    
    ''''''

    predicate_list = set()
        
    with open(domainFileName, 'r') as domain_file:

        read_predicate_flag = False

        for line in domain_file:

            if line.strip() == ')':
                read_predicate_flag = False

            if read_predicate_flag:
                predicate_list.add(line.strip()[1:-1].strip())
                 
            if '(:predicates' in line:
                read_predicate_flag = True

    with open(domainFileName, 'r') as domain_file:
        action_dict = {item.split(' ')[1] : PDDLaction(item)
                       for item in re.findall('\(:action.*?:effect.*?[not.*?\)]*[\s+]*\)[\s+]*\)[\s+]*\)', re.sub('[\s+]', ' ', domain_file.read()))}

    init_state = set()
    goal_state = set()

    with open(problemFileName, 'r') as problem_file:
        
        read_init_flag = False
        read_goal_flag = False

        for line in problem_file:

            if line.strip() == ')':
                read_init_flag = False

            if line.strip() == ')':
                read_goal_flag = False

            if read_init_flag:
                init_state.add(line.strip()[1:-1].strip())

            if read_goal_flag:
                goal_state.add(line.strip()[1:-1].strip())

            if 'total-cost' in line:
                read_init_flag = True
 
            if '(and' in line:
                read_goal_flag = True

    return [init_state, goal_state, predicate_list, action_dict]


'''
Method :: compute plan from domain and problem files
'''

def get_plan(domainFileName, problemFileName):

    output = os.popen(__FD_PLAN_CMD__.format(domainFileName, problemFileName)).read().strip()
    plan   = [item.strip() for item in output.split('\n')] if output != '' else []

    return plan


''' 
Method :: ground PDDL domain and problem files
'''

def ground(domainFileName, problemFileName):

    output = os.system('./clean.sh')
    output = os.system(__GROUND_CMD__.format(domainFileName, problemFileName))

'''
Method :: debug
'''
    
def debug():

    ground('../domains/case-1/domain-papp.pddl', '../domains/case-1/problem-papp.pddl')
    read_planning_problem_from_PDDL('tr-domain.pddl', 'tr-problem.pddl')

    print get_plan('tr-domain.pddl', 'tr-problem.pddl')
    
if __name__ == '__main__':
    debug()
