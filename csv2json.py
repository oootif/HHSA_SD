#!/usr/bin/env python

"""
Convert csv to json file.

AUTHOR: Tiff Liang
DATE: Feb 22, 2014

"""
import csv
import json

csvfile = open('../data/HHSA_3_4_50_Health_Data2.csv', 'r')
jsonfile = open('../data/HHSA_3_4_50_Health_Data.json', 'w')

jsonfile.write('[\n')
reader = csv.DictReader(csvfile)
lr = list(reader.fieldnames)
c=0
l = 43
for row in reader:
    c=c+1
    print c
    json.dump(row, jsonfile)
    if c<l:
        jsonfile.write(',\n')
    else:
        jsonfile.write('\n')   
jsonfile.write(']\n')
jsonfile.close()
