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
    animal_type = "fish"
    location = "ocean"
    followers = 5
    
    
    def __init__(self, name, age):
#       print("This is the contructor method __init__ ")
        self.name = name
        self.age = age

    def swim(self):
        print("The Shark is swimming. Dunn Dundt")
        print(self.name + " is swimming,")

    def be_awesome(self):
        print(self.name + " is being an Awesome Shark")


def main():
    sammy = Shark("Sammy", 1)
    sammy.swim()
    sammy.be_awesome()
    stevie = Shark("Stevie", 4)
    stevie.swim()
    print(stevie.animal_type)
    print(stevie.location)
    print(stevie.followers)


if __name__ == "__main__":
    main()
