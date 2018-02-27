#!/usr/bin/env python

'''
Topic   :: Problem / Environment Class Definition
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

from PDDLhelp import *
import copy

'''
Class :: Problem Definition
'''

class Problem:

    def __init__(self, domainFile, problemFile):

        print "Setting up Planning Problem..."

        self.domainFile  = domainFile
        self.problemFile = problemFile

        ground(self.domainFile, self.problemFile)
        self.initState, self.goalState, self.predicateList, self.actionList = read_planning_problem_from_PDDL('tr-domain.pddl', 'tr-problem.pddl')

    def getInitState(self):
        return self.initState

    def getGoalState(self):
        return self.goalState

    def isGoal(self, node):
        currentState = node[0]
        return set(self.getGoalState()).issubset(currentState)

    def heuristic(self, state):
        return 0.0

    def getSuccessors(self, node):
        
        currentState   = node[0]
        currentCost    = len(node[1])
        successor_list = []

        for action in self.actionList.values():

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
                        newState.discard(condition)

                newCost = currentCost + 1
                successor_list.append([newState, action[0], newCost])
                
        return successor_list
