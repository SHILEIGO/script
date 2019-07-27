#!/bin/bash
./autosave.sh >log.txt 

# example:collect node
awk ' {print $12,$15,$18,$21 }' ./log.txt > ./node.txt  #12 is twelfth column.Each column is separated by space.
awk '{print $15}' ./log.txt > ./edge.txt       		#if necesary

      					
sed /^[[:space:]]*$/d node.txt > new.txt		#delete balnk line

sed '1i\nd edge aig level ' new.txt > neww.txt
touch newww.txt
echo benchmark> newww.txt
for file in autosave_blif/*.blif; do
base=`basename $file .blif`
echo $base >>newww.txt
done
	
paste newww.txt neww.txt >nnew.txt
cat nnew.txt | tr -s '[:blank:]' ',' > excel.csv 



