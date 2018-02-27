#!/usr/bin/env python

'''
Topic   :: Execution Modules
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

from PDDLhelp import *

'''
Class :: Projection Aware Plan Executor
'''

class Exe:

    def __init__(self, domainFile, problemFile, hyps):

        print "Setting up Plan Executor..."

        self.domainFile    = domainFile
        self.problemFile   = problemFile
        self.hypothsisFile = hyps

    def getPlan(self):
        pass

    def getProjection(self):
        pass


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
