#/bin/bash

echo $1 $2
#for i in $2*.gif;
#do mogrify -verbose -trim +repage "$i"
#done
convert -verbose -delay $1 "$2"*.gif -loop 0 "$2"-animated.gif
mogrify -verbose -layers Optimize "$2"-animated.gif
echo "Making .mp4 file"
ffmpeg -f gif -i "$2"-animated.gif "$2"-animated.mp4

