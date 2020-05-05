# -*- coding: utf-8 -*-
"""
Created on Sat Apr 25 07:48:57 2020

@author: bruce


There are 191 fundamental software patterns
23 Gamma Patterns
17 Buschmann Patterns
72 Analysis Patterns
38 CORBA Design Patterns
42 AntiPatterns
AntiPatterns Refactoring Software Architecures an Projects in Crisis
"""


class Shark:
    def swim(self):
        print("Don Dunt")

    def be_awesome(self):
        print("Awesome Shark")

def main():
    sammy = Shark()
    sammy.swim()
    sammy.be_awesome()

if __name__ == "__main__":
    main()
    