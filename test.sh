#!/bin/bash

#echo $(ls Downloads/*.jpg | sed -n '2'p)

#echo $( shuf -i 1-20 -n 1)

#echo $( shuf -i 1-(ls Downloads/*.jpg | wc -l) -n 1)

#ls -al Downloads/*.jpg | wc -l 

#count .jpg files i.e. 7
SIZE=$(echo $(ls -l Downloads/*.jpg | wc -l))
#echo $SIZE

#pick up random number from 1 to SIZE
RAND=$(shuf -i 1-$SIZE -n 1)
#echo $RAND

#pick up .jpg file name based on RAND number
IMAGE=$( ls Downloads/*.jpg | sed "${RAND}q;d" )
#echo $IMAGE

#set up .feh file
echo "#!/bin/bash" > .fehbg
echo "feh --no-fehbg --bg-scale '/home/vdd13/$IMAGE'" >> .fehbg
