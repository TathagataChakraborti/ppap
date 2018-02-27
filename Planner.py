#!/usr/bin/env python

'''
Topic   :: Planner Module
Project :: Projection Aware Planning Prototype
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

from Queue import PriorityQueue
import copy

'''
Method :: Projection Aware Planner module implementing astar search
'''

def PAPP(problem):
    
    initState = problem.getInitState()
    fringe    = PriorityQueue()
    closed    = set()
    numNodes  = 0

    fringe.put((0.0, [initState, []]))

    print "Runnning aStar Search..."
    while not fringe.empty():

        node = fringe.get()[1]

        if problem.isGoal(node):
            print "Goal Found! Number of Nodes Expanded = {}\n{}".format(numNodes, '\n'.join(node[1]))
            return node[1]

        if frozenset(node[0]) not in closed:

            closed.add(frozenset(node[0]))

            successor_list = problem.getSuccessors(node)
            numNodes += 1

            if not numNodes % 100:
                print "Number of Nodes Expanded =", numNodes


            #print successor_list
            #exit()

            while successor_list:
                
                candidate_node = successor_list.pop()

                plan_prefix    = copy.deepcopy(node[1])
                plan_prefix.append(candidate_node[1])
                
                new_node       = [candidate_node[0], plan_prefix]

                fringe.put((candidate_node[2], new_node))

    return None
