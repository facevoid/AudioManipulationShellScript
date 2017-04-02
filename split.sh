#!/bin/bash 
if [ ! -d converted/ ]; then 
 mkdir converted/ 
fi 
for i in ./*.wav 
 do sox -V3 $i "converted/$i" silence -l 1 0.1 .5% 1 0.3 0.5% : newfile : restart  ; 
done 

