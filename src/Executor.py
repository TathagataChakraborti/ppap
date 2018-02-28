#!/usr/bin/env python

'''
Topic   :: Execution Modules
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

'''
Import Packages
'''

from PDDLhelp import *

import copy
import numpy as np

'''
Global Variables
'''

_path_to_template = '../domains/case-2/template.pddl'



'''
Class :: Projection Aware Plan Executor
'''

class Exe:

    def __init__(self, domainFile, problemFile, hypsFile, realHypFile):

        print "Setting up Plan Executor..."

        self.domainFile  = domainFile
        self.problemFile = problemFile
        self.hypsFile    = hypsFile
        self.realHypFile = realHypFile

        with open(_path_to_template, 'r') as template_file:
            template = template_file.read()

        with open(self.hypsFile, 'r') as hyps_file:
            self.hyps = hyps_file.read().strip().split('\n')

        with open(self.realHypFile, 'r') as real_hyp_file:
            self.real_hyp = real_hyp_file.read().strip()

        self.hypsPlans = {}
            
        for hyp in self.hyps:

            temp_template = copy.deepcopy(template).replace('<<HYPOTHESIS>>', hyp.replace(',','\n'))

            with open('tmp.pddl', 'w') as tmp_pddl:
                tmp_pddl.write(temp_template)

            self.hypsPlans[hyp] = get_plan(self.domainFile, 'tmp.pddl')


        temp_template = copy.deepcopy(template).replace('<<HYPOTHESIS>>', self.real_hyp.replace(',','\n'))

        with open('tmp.pddl', 'w') as tmp_pddl:
            tmp_pddl.write(temp_template)

        self.realHypPlan = get_plan(self.domainFile, 'tmp.pddl')

        print 'Real Plan:', self.realHypPlan
        for item in self.hypsPlans:
            print 'Possible Plan', self.hypsPlans[item]


    def __compute_profile__(self, obj, plan):

        if obj == 'T':

            profile = np.ones(len(plan))

        else:
            
            profile = np.zeros(len(plan))
            
            if 'pick-up {}'.format(obj.lower()) in plan:

                idx = plan.index('pick-up {}'.format(obj.lower()))

                for i in range(idx, len(plan)):
                    profile[i] = 1.0
                
        return profile
                
            
    def getPlan(self):
        return 'Plan >>\n' + '\n'.join(self.realHypPlan)

    def getProjection(self):

        objects = ['A', 'B', 'G', 'R', 'O', 'T']

        real_profiles = {}
        hyps_profiles = {}

        for obj in objects:
            
            real_profiles[obj] = self.__compute_profile__(obj, self.realHypPlan)
            hyps_profiles[obj] = np.zeros(len(self.realHypPlan))
            
            for hyp in self.hyps:
                
                hyps_profiles[obj] += self.__compute_profile__(obj, self.hypsPlans[hyp])

            hyps_profiles[obj] = hyps_profiles[obj] / len(self.hyps)
            
        conflict = sorted({obj : sum(real_profiles[obj] * hyps_profiles[obj]) for obj in objects}.items(), key=lambda x:x[1])

        for item in conflict:
            if sum(real_profiles[item[0]]) > 0.0:
                return 'Project >> ' + item[0]
        

'''
Class :: Projection Aware Plan Executor
'''

class ExeHILP:

    def __init__(self, domainFile, problemFile, hyps):

        print "Setting up Human-in-the-Loop Plan Executor..."

        self.domainFile    = domainFile
        self.problemFile   = problemFile
        self.hypothsisFile = hyps

    def getPlan(self):
        pass

    def getProjection(self):
        pass

