#!/usr/bin/python

import os
import glob
import sys
import fnmatch
import shutil


dest_dir="/home/bionime/wtwnas3352-SDK/linux/kernel/linux-3.2.0-psp04.06.00.08.sdk/"

for root, subFolders, filenames in os.walk("."): 
    for file in fnmatch.filter(filenames, "*.gitignore"):
        filename = os.path.join(root, file)[2:]         # remove first 2 characters of string,ex "./"
        print "copying " + filename + "..."
        os.system("cp " + filename + " " + dest_dir + filename) 


