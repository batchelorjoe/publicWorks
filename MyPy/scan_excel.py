# -*- coding: utf-8 -*-
"""
Created on Wed Apr 15 11:15:56 2020

@author: bruce
"""

import os
import xlrd as xl
import sys


def countRow(loc):
    """
    Documenting
    Parameters
    ----------
    loc : a file system path of the location of the workbook file
    Returns
    ----------
    None

    Example
    ---------
    >>> countRow("mypath\\myfile.xls")
    """
    count = 0
    wb = xl.open_workbook(loc)
    s1 = wb.sheet_by_index(0)
    s1.cell_value(0, 0)
    count = count+(s1.nrows-1)
    print("no.of rows:", count)
    return count


def getSheetInfo(work_book, tab_name):
    """ Given objects 'work_book', 'tab_name'. print 'Contents'. """
    count = 0
    print("Geting the Details for Sheet")
    tab_name.cell_value(0, 0)
    count = count+(tab_name.nrows-1)
    print("no.of rows for", tab_name.name, " has ", count, "rows")
    print("no.of Columns ", tab_name.ncols)
    print(tab_name.cell_value(0, 0), tab_name.cell_value(0, 1))


def findBook(filepath):
    for fname in os.listdir(filepath):
        book_loc = (filepath+"\\"+fname)
        wb = xl.open_workbook(book_loc)
        scnt = wb.nsheets
        print("Opened the workbook "+book_loc)
        print("Containing", scnt, "tabs")
        tab = 0
        while 0 < scnt:
            s1 = wb.sheet_by_index(tab)
            getSheetInfo(wb, s1)
            scnt -= 1
            tab += 1


print("Program Starts Here ")
print("Looking for settings file")
prog_dir = os.getcwd
print(prog_dir)
with open((prog_dir+"\\"+'scan_excel.bcp')) as s:
    s.readline
    


print("Dump Preset values")
data_folder = os.path.join("bcp", "excell_files")
# cur_folder = os.path.abspath(.)
print(data_folder)


mypath = r'C:\bcp\excell_files'
file_name = (mypath+"\\"+'report.txt')
# file_finish = (mypath+"\\"+'finish.txt')
print("This program will be writing to ", file_name)

file_finish = 'end'
file_text = 'this is file text '


try:
    # open file stream
    file = open(file_name, "w")
except IOError:
    print("There was an error opening file", file_name)
    sys.exit
print("Enter '", file_finish)
print("' When finished")
while file_text != file_finish:
    file_text = input("Enter text: ")
    if file_text == file_finish:
        # close the file
        file.close
        break
    file.write(file_text)
    file.write("\n")
file.close
file_name = input("Enter filename: ")
if len(file_name) == 0:
    print("Next time please enter a file name")
    sys.exit()
try:
    file = open((mypath+"\\"+file_name), "r")
except IOError:
    print("There was an error reading file")
    sys.exit()
file_text = file.read()
file.close()
print(file_text)


findBook(mypath)
print("rows", countRow(r'C:\bcp\excell_files\timetowork.xlsx'))
