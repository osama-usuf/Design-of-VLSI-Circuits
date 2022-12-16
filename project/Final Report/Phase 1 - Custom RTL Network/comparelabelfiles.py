# -*- coding: utf-8 -*-
"""
Created on Sun Nov 13 19:13:51 2022

@author: Tzaphqiel
"""

fileverilog = open("label_v11.txt", "r")
fileoriginal = open("label_m.txt", "r")

i = 0
miss = 0
hit = 0

for line1 in fileoriginal:
    i += 1
    for line2 in fileverilog:          
        # matching line1 from both files
        if line1 == line2:  
            #Do nothing
            hit += 1
        else:
            miss += 1
            print("Image ", i, ":")
            # else print that line from both files
            print("\tPrediction:\t", line1, end='')
            print("\tTruth:\t\t", line2, end='')
        break
  
# closing files
print("Accuracy: " + str((hit/i) * 100) + "%")
print("Inaccuracy: " + str((miss/i) *100)+ "%")
fileverilog.close()                                       
fileoriginal.close()