#!/bin/bash

#echo $(ls Downloads/*.jpg | sed -n '2'p)

#echo $( shuf -i 1-20 -n 1)

#echo $( shuf -i 1-(ls Downloads/*.jpg | wc -l) -n 1)

#ls -al Downloads/*.jpg | wc -l 


SIZE=$(echo $(ls -l Downloads/*.jpg | wc -l))
#echo $SIZE

RAND=$(shuf -i 1-$SIZE -n 1)
#echo $RAND

IMAGE=$( ls Downloads/*.jpg | sed "${RAND}q;d" )
#echo $IMAGE

echo "#!/bin/bash" > .fehbg
echo "feh --no-fehbg --bg-scale '/home/vdd13/$IMAGE'" >> .fehbg
