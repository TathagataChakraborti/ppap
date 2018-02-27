#!/usr/bin/env python

'''
Topic   :: Driver Script
Project :: Projection Aware Planning
Author  :: Tathagata Chakraborti
Date    :: 02/26/2018
'''

'''
Import packages
'''

import argparse, sys
from Problem import Problem
from Planner import PAPP
from Executor import *

'''
method :: main
'''

def main():

    parser = argparse.ArgumentParser(description='''The driver script for the Projection Aware Planning Prototype''',
                                     epilog="Usage >> ./main.py -u 1")

    parser.add_argument('-u', '--usecase', type=int, help="ID of the Use Case.")
    parser.add_argument('-d', '--domain',  type=str, help="(path to) domain file.")
    parser.add_argument('-p', '--problem', type=str, help="(path to) problem file.")
    parser.add_argument('-o', '--hyps',    type=str, help="(path to) hypothesis file.")
    
    if not sys.argv[1:] or '-h' in sys.argv[1:]:
        print parser.print_help()
        sys.exit(1)

    args = parser.parse_args()

    if args.usecase == 1:

        problem_instance = Problem(args.domain, args.problem)
        PAPP(problem_instance)

    elif args.usecase == 2:

        execution_instance = Exe(args.domain, args.problem, args.hyps)

        print execution_instrance.getPlan()
        print execution_instrance.getProjection()

    elif args.usecase == 3:

        execution_instance = ExeHILP(args.domain, args.problem, args.hyps)

        print execution_instrance.getPlan()
        print execution_instrance.getProjection()

    elif args.usecase == 4:
        raise NotImplementedError

    else:pass

    
if __name__ == '__main__':
    main()
