#!/usr/bin/env python3

import rospy
import message_filters
from std_msgs.msg import *

def callback0(msg):
    #global bStartturnConv
    bStartturnConv = msg.data

def callback1(msg):
    bStartTurn = msg.data

def callback2(msg):
    bStopTurn = msg.data

def VelocityCalculation():
    rospy.init_node('convSpeed', anonymous=True)
    

    pubVelocity = rospy.Publisher('dConvSpeed', Float64, queue_size=10)
    #while not rospy.is_shutdown():
    rospy.Subscriber("startTurnConveyor",Bool, callback0)
    rospy.Subscriber("startTurnProcess", Bool, callback1)
    rospy.Subscriber("stopTurnProcess", Bool, callback2)
    #ts = message_filters.TimeSynchronizer([bHandover, bStartTurn, bStopTurn], 3)

    #ts.registerCallback(callback)

    #print(bGetTurnConvReady.bHandover)
    #rospy.spin()
    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        print(bStartturnConv, "\t", bStartTurn, "\t", bStopTurn)
        rate.sleep()
        rospy.spin()
    #   print()


if __name__ == '__main__':
    bStartturnConv = False
    bStartTurn = False
    bStopTurn = False
    VelocityCalculation()