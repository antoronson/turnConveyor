#!/usr/bin/env python3

import rospy
from std_msgs.msg import *

def bGetTurnConvReady(msg):
   # print(msg.data)
    bHandover = msg.data
    #print(bHandover)

def bStartTurnProcess(msg):
    self.bStartToTurn = msg.data

def bStopTurnProcess(msg):
    bStopTurn = msg.data


def VelocityCalculation():
    rospy.init_node('convSpeed', anonymous=True)
    

    pubVelocity = rospy.Publisher('dConvSpeed', Float64, queue_size=10)
    #while not rospy.is_shutdown():
    rospy.Subscriber("startTurnConveyor",Bool, bGetTurnConvReady)
    rospy.Subscriber("startTurnProcess", Bool, bStartTurnProcess)
    rospy.Subscriber("stopTurnProcess", Bool, bStopTurnProcess)
    #print(bGetTurnConvReady.bHandover)
    rospy.spin()
    #while not rospy.is_shutdown():
    #    print(bGetConvReady.bHandover, "\t", bStartToTurn, "\t", bStopTurn)
    #   print()


if __name__ == '__main__':

    VelocityCalculation()