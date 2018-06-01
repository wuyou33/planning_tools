import argparse
from ..parser import parse_file
from ..solvers import *
from ..determinization import *


def main(filepath):
    sdomain, sproblem = parse_file(filepath, "both")
    # determinizer = AllOutcomeDeterminizer()
    determinizer = AlphaCostLikelihoodDeterminizer(round_=2)
    determinizer.set_domain(sdomain)
    problem = determinizer(sproblem)
    print(problem.domain)
    print(problem)
    ##########
# def main(domainpath, problempath):
    # domain = parse_file(domainpath, "domain")
    # problem = parse_file(problempath, "problem", domain)
    # print(domain)
    # print(problem)

    # planner = FFPlanner(s=0)
    planner = FDPlanner(search="astar(add())")
    result = planner(problem, timeout=None)
    print(result["plan-found"])
    if result["plan-found"]:
        print("Plan ({}):".format(len(result["plan"])))
        print("\n".join("(" + " ".join(t) + ")" for t in result["plan"]))
        print("Total cost: " + str(result["total-cost"]))
        print("Total elapsed: " + str(result["total-elapsed"]))
    elif result["timeout"]:
        print("timeout")
    else:
        print(result["stdout"])
        print(result["stderr"])
    print(result["time-wall"])


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    # parser.add_argument("domainpath", help="Filepath to LISP-like text file")
    # parser.add_argument("problempath", help="Filepath to LISP-like text file")
    parser.add_argument("filepath", help="Filepath to LISP-like text file")
    args = parser.parse_args()
    main(**vars(args))
