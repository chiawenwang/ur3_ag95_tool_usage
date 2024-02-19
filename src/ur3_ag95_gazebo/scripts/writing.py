#!/usr/bin/env python
import sys,os
path = os.path.abspath(".")
sys.path.insert(0,path + "/src/ur3_ag95_gazebo/scripts")

from Robot import MoveGroupPythonInterfaceTutorial

pos = [-0.1, 0.2, 0.6]
pos1 = [0.3, 0.2, 0.5]

robot = MoveGroupPythonInterfaceTutorial()

# robot.go_to_pose_goal(pos)
robot.go_to_pose_goal(pos)


