"""
Unzip a bunch of files
"""

import zipfile
import os 

path = "/Users/abrenema/sampex/HILT/State4/"

#Get all zip files in directory
ftmp = os.listdir(path)
files = []
for i in range(len(ftmp)):
    if ftmp[i].endswith('.zip'):
        files.append(ftmp[i])


#Unzip all files
for i in files:
    with zipfile.ZipFile(path+i, 'r') as zip_ref:
        zip_ref.extractall(path)




