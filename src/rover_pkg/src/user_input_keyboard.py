#!/usr/bin/env python

import rospy
import keyboard

from rover_pkg.msg import UserInput

def getInputs():
	input_stream_publisher = rospy.Publisher('user_input_stream', UserInput, queue_size=10)
	rospy.init_node('user_input_node')
	rate = rospy.Rate(10)
	rospy.loginfo("User Input node started")
	
	
	while not rospy.is_shutdown():
		keyList = ""
		# get all keys we are interested in
		if keyboard.is_pressed('w'):
			keyList = keyList + 'w'
		if keyboard.is_pressed('s'):
			keyList = keyList + 's'
		if keyboard.is_pressed('a'):
			keyList = keyList + 'a'
		if keyboard.is_pressed('d'):
			keyList = keyList + 'd'
		# get status of sliders and buttons
		
		# Publish	
		user_input = UserInput()
		user_input.controlMode = "keyboard_controller"
		user_input.keysPressed = keyList
		
		
		input_stream_publisher.publish(user_input)
		
		rate.sleep()
	
if __name__=="__main__":
	try:
		getInputs()
	except rospy.ROSInterruptException:
		pass		

		




  

