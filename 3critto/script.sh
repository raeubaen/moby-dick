f="file.png"
g="w.png"
ffmpeg -i $f \
-i $f -i $f -i $f \
-i $f -i $f -i $f \
-i $f -i $f -i $f \
-i $f -i $f -i $f \
-i $g -i $g -i $g \
-frames:v 1 \
-filter_complex \
"nullsrc=size=1920x1080 [base]; \
[0:v] setpts=PTS-STARTPTS, scale=480x270 [video1]; \
[1:v] setpts=PTS-STARTPTS, scale=480x270 [video2]; \
[2:v] setpts=PTS-STARTPTS, scale=480x270 [video3]; \
[3:v] setpts=PTS-STARTPTS, scale=480x270 [video4];\
[4:v] setpts=PTS-STARTPTS, scale=480x270 [video5]; \
[5:v] setpts=PTS-STARTPTS, scale=480x270 [video6]; \
[6:v] setpts=PTS-STARTPTS, scale=480x270 [video7]; \
[7:v] setpts=PTS-STARTPTS, scale=480x270 [video8]; \
[8:v] setpts=PTS-STARTPTS, scale=480x270 [video9]; \
[9:v] setpts=PTS-STARTPTS, scale=480x270 [video10]; \
[10:v] setpts=PTS-STARTPTS, scale=480x270 [video11]; \
[11:v] setpts=PTS-STARTPTS, scale=480x270 [video12]; \
[12:v] setpts=PTS-STARTPTS, scale=480x270 [video13]; \
[13:v] setpts=PTS-STARTPTS, scale=480x270 [video14]; \
[14:v] setpts=PTS-STARTPTS, scale=480x270 [video15]; \
[15:v] setpts=PTS-STARTPTS, scale=480x270 [video16]; \
[base][video1]  overlay=shortest=0 [tmp1]; \
[tmp1][video2]  overlay=shortest=0:x=480 [tmp2]; \
[tmp2][video3]  overlay=shortest=0:x=960 [tmp3]; \
[tmp3][video4]  overlay=shortest=0:x=1440 [tmp4]; \
[tmp4][video5]  overlay=shortest=0:y=270 [tmp5]; \
[tmp5][video6]  overlay=shortest=0:x=480:y=270 [tmp6]; \
[tmp6][video7]  overlay=shortest=0:x=960:y=270 [tmp7];\
[tmp7][video8]  overlay=shortest=0:x=1440:y=270 [tmp8]; \
[tmp8][video9]  overlay=shortest=0:y=540 [tmp9];\
[tmp9][video10]  overlay=shortest=0:x=480:y=540 [tmp10]; \
[tmp10][video11]  overlay=shortest=0:x=960:y=540 [tmp11]; \
[tmp11][video12]  overlay=shortest=0:x=1440:y=540 [tmp12]; \
[tmp12][video13]  overlay=shortest=0:y=810 [tmp13]; \
[tmp13][video14]  overlay=shortest=0:x=480:y=810 [tmp14]; \
[tmp14][video15]  overlay=shortest=0:x=960:y=810 [tmp15]; \
[tmp15][video16]  overlay=shortest=0:x=1440:y=810" \
out.png
