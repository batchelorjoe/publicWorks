import os
import xlrd as xl


def countRow():
    count = 0
    wb = xl.open_workbook(loc)
    s1 = wb.sheet_by_index(0)
    s1.cell_value(0, 0)
    count = count+(s1.nrows-1)
    print("no.of rows:", count)


def getSheetInfo(work_book, tab_name):
    print("Geting the Details for Sheet")
    tab_name.cell_value(0, 0)
    count = count+(s1.nrows-1)
    print("no.of rows for", tab_name.name, " has ", count, "rows")


def findBook(filepath):
    for fname in os.listdir(filepath):
        book_loc = (filepath+"\\"+fname)
        wb = xl.open_workbook(loc)
        scnt = wb.nsheets
        print("Opened the workbook "+loc)
        print("Containing", scnt, "tabs")
        count = 0
        tab = 0
        while 0 < scnt:
            s1 = wb.sheet_by_index(tab)
            getSheetInfo(wb, s1)
            scnt -= 1
            tab += 1
        
        
data_folder = os.path.join("bcp", "excell_files")
# cur_folder = os.path.abspath(.)
print(data_folder)


mypath = r'C:\bcp\excell_files'


count = 0
for filename in os.listdir(mypath):
    loc = (mypath+"\\"+filename)
    print("Reading " + loc)
    countRow()
print("Done")

#    wb=xl.open_workbook(loc)
#    s1=wb.sheet_by_index(0)
#    s1.cell_value(0,0)
#    count=count+(s1.nrows-1)
#   print("no.of rows:",count)
loc = (mypath + "\\" + filename)
# Makem3smart
for filename in os.listdir(mypath):
    loc = (mypath+"\\"+filename)
    print("Looking for workbooks in "+mypath)
#    countRow()
    wb = xl.open_workbook(loc)
    scnt = wb.nsheets
    print("Opened the workbook "+loc)
    print("Containing", scnt, "tabs")
    count = 0
    tab = 0
    while 0 < scnt:

        s1 = wb.sheet_by_index(tab)
        s1.cell_value(0, 0)
        count = count+(s1.nrows-1)
        print("no.of rows for", s1.name, " has ", count, "rows")
        scnt -= 1
        tab += 1

print("Done")
wb.user_name
print(wb.nsheets)
