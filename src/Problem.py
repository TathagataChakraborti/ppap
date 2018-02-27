#!/usr/bin/env python

'''
Topic   :: Problem / Environment Class Definition
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

from PDDLhelp import *
from Planner import PAPP
import copy

'''
Global Variables
'''

_projection_set   = ['UNSTACK', 'PICK-UP']   # projections are available for these actions
_projection_bias  = 10                       # trade-off in cost of physical actions versus projections
_projection_cost  = 0.1                      # cost of projection actions

_path_to_template = '../domains/case-1/template.pddl'
_path_to_hyps     = '../domains/case-1/hyps.dat'

'''
Class :: Problem Definition
'''

class Problem:

    def __init__(self, domainFile, problemFile, ground_flag=True):

        # print "Setting up Planning Problem..."

        self.domainFile  = domainFile
        self.problemFile = problemFile

        if ground_flag:

            ground(self.domainFile, self.problemFile)
            self.initState, self.goalState, self.predicateList, self.actionList = read_planning_problem_from_PDDL('tr-domain.pddl', 'tr-problem.pddl')

        else:

            self.initState, self.goalState, self.predicateList, self.actionList = read_planning_problem_from_PDDL(self.domainFile, self.problemFile)

        actions = self.actionList.keys()
        for action in actions:
            if any([projection in action for projection in _projection_set]):
                self.actionList['PR-' + action] = ['PR-' + action, '', {}, {}, _projection_cost]

        with open(_path_to_hyps, 'r') as hyps_file:
            self.hyps = hyps_file.read().strip().split('\n')

        with open(_path_to_template, 'r') as template_problem_file:
            self.template_problem = template_problem_file.read()


    def getInitState(self):
        return self.initState

    def getGoalState(self):
        return self.goalState

    def isGoal(self, node):
        return set(self.getGoalState()).issubset(node[0]) and all([action.split('PR-')[1] in node[1] if 'PR-' in action else True for action in node[1]])

    def heuristic(self, currentAction, planPrefix, currentState):

        for hyp in self.hyps:

            template_problem = copy.deepcopy(self.template_problem)
            
            with open('problem.pddl', 'w') as temp_problem_file:
                temp_problem_file.write(template_problem
                                        .replace('<<STATE>>', '\n'.join(['( {} )'.format(predicate) for predicate in currentState]))
                                        .replace('<<HYPOTHESIS>>', '\n'.join([item.strip() for item in hyp.strip().split(',')])))
            
            temp_problem_instance = Problem('tr-domain.pddl', 'problem.pddl', ground_flag=False)
            #print PAPP(temp_problem_instance, relaxed_flag=True)
            
        return 0.0

    
    def getSuccessors(self, node, relaxed_flag=False):

        currentState   = node[0]
        currentCost    = len(node[1])
        successor_list = []

        temp_actionList = copy.deepcopy(self.actionList)

        if relaxed_flag:
            for item in self.actionList:
                if 'PR-' in item:
                    temp_actionList.pop(item)

        for action in temp_actionList.values():

            applicable = True
            for condition in action[2].keys():
                applicable = condition in currentState
                if not applicable: break
        
            if applicable:

                newState = copy.deepcopy(currentState)
                for condition in action[3].keys():

                    if action[3][condition]:
                        newState.add(condition)

                    else:

                        if not relaxed_flag:
                            newState.discard(condition)

                if relaxed_flag:
                    newCost = currentCost + 1
                else:
                    newCost = currentCost + 1
                    val = 1 + _projection_bias * self.heuristic(action[0], node[1], newState)
                    
                successor_list.append([newState, action[0], newCost])

        return successor_list
