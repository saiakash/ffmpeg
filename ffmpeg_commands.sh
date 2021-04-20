#!/bin/bash

#---------------------------------
#basic ffmpeg
ffmpeg -i input.mp4 output.mp4 
# -i identifies the input video
#---------------------------------
#coverting one container extension to another
ffmpeg -i input.mp4 -c:v copy -c:a copy output.mov
# -c:v
#Video codec, copy. This tells FFmpeg to copy the compressed video stream without re-encoding.
# -c:a
#audio codec, copy. This tells FFmpeg to copy the compressed audio stream without re-encoding.
#---------------------------------
#extract section of video
ffmpeg -ss 00:00:05 -i input.mp4 -t 00:00:03 -c:v copy -c:a copy excerpt.mp4
# -ss 00:00:05 starts/seek from 5th sec
# -t 00:00:03 ends at 3rd sec from 5th sec
#---------------------------------