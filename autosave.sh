#!/bin/bash
for file in autosave_blif/*.blif; do
base=`basename $file .blif`
echo "processing $base"

abc -c "read $file; 
        strash;                         
        compress2rs;
        drwsat; 
        compress2rs;
        st; dch; resyn2;
        st; dch; resyn2;        
	if -K 4;
	ps;"

done

#awk '{print $12}' ./log.txt > ./name.txt
#cat name.txt | sed -e '/^$/d' > new.txt 
#cat new.txt | tr "old value" "new value" >excel.csv


