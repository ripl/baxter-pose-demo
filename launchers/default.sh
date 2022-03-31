#!/bin/bash
source /cpk/environment.sh

# YOUR CODE BELOW THIS LINE
# ----------------------------------------------------------------------------


# launching app
source ${CPK_CODE_DIR}/devel/setup.bash
cpk-exec roslaunch realsense2_camera rs_camera.launch align_depth:=true
cpk-exec rosrun trt_pose pose_estimator.py
cpk-exec rosrun trt_pose pose_tracker.py
rosrun trt_pose pose_visualizer.py


# ----------------------------------------------------------------------------
# YOUR CODE ABOVE THIS LINE
