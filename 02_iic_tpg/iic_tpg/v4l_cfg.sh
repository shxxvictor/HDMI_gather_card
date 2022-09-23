#!/bin/bash
media-ctl -d /dev/media0 -V '"80010000.v_tpg":0 [fmt:UYVY/3840x2160@1/60]'
v4l2-ctl -d /dev/video0 --set-fmt-video=width=3840,height=2160,pixelformat='YUYV'
yavta /dev/v4l-subdev0 --set-control '0x009f0903 0'