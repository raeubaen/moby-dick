ffmpeg -i lisergic.mpeg -ss 00:00:33 -t 00:00:47 -af 'afade=in:st=33:d=6' \
 lisergic_cut.mpeg
