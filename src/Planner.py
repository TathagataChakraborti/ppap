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

def PAPP(problem, relaxed_flag=False):
    
    initState = problem.getInitState()
    fringe    = PriorityQueue()
    closed    = set()
    numNodes  = 0

    fringe.put((0.0, [initState, [], 0.0]))

    if not relaxed_flag:
        print "Runnning aStar Search..."

    while not fringe.empty():

        val, node = fringe.get()
        
        if problem.isGoal(node):

            if not relaxed_flag:
                print "Goal Found! Number of Nodes Expanded = {} / {}".format(numNodes, val)

            return node[1]

        if frozenset(node[0]) not in closed:

            if relaxed_flag:
                closed.add(frozenset(node[0]))

            successor_list = problem.getSuccessors(node, relaxed_flag)
            numNodes      += 1

            if not numNodes % 1 and not relaxed_flag:
                print "Number of Nodes Expanded =", numNodes

            while successor_list:
                
                candidate_node = successor_list.pop()

                plan_prefix    = copy.deepcopy(node[1])
                plan_prefix.append(candidate_node[1])
                
                new_node       = [candidate_node[0], plan_prefix, candidate_node[2]]
 
                #if not relaxed_flag:
                #    print (candidate_node[2], new_node)
            
                fringe.put((candidate_node[2], new_node))

    return None
