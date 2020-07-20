#!/bin/bash
#
#
#

################################################
#
# Functions
#
################################################

DIR=$(pwd)


music()
{
if [ -e "$DIR/music" ];then
       echo -n ""
else
       mkdir music
fi

mv *.mp3 "$DIR/music" 2>/dev/null
mv *.flac "$DIR/music" 2>/dev/null
}

images()
{
if [ -e "$DIR/images" ];then
       echo -n ""
else
       mkdir images
fi

mv *.jpg "$DIR/images" 2>/dev/null
mv *.png "$DIR/images" 2>/dev/null
}

videos()
{
if [ -e "$DIR/videos" ];then
       echo -n ""
else
       mkdir videos
fi

mv *.avi "$DIR/videos" 2>/dev/null
mv *.mov "$DIR/videos" 2>/dev/null
}



logs()
{
find . -name "*.log" -type f -delete
}


################################################
#
# Main Program
#
################################################

music
videos
images
logs