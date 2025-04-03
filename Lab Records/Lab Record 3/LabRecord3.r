# R code to perform importing data from text file and excel file.
library(xlsx)

setwd("c:/College/R Programming/Lab Records/Lab Record 3")

textData = read.table("LabRecord3.txt", header = TRUE, sep = "\t", fill = TRUE)
excelData = read.xlsx("LabRecord3.xlsx", sheetIndex = 1, header = TRUE)

print(textData)
print(excelData)
