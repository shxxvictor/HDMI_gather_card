#!/bin/bash
gst-launch-1.0 v4l2src device=/dev/video0 num-buffers=1800 ! video/x-raw, width=3840, height=2160, framerate=60/1 ! omxh265enc target-bitrate=25000 control-rate=low-latency y444-to-gray=true num-slices=6 periodicity-idr=120 ! filesink location="/dyn/test_265.mp4"