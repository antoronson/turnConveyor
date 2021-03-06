#!/usr/bin/env python3

import rospy
import message_filters
from std_msgs.msg import *
from custom_msg.msg import *

""" Notes:
    # 3 Sensor signals are subscribed and saved to a global variable. 
    # I tried to synchronize them with the message_filters option, but I need more time. 
    # I chose second option of saving to a global variable. 
    # I cannot print them because the Spin() option only looks for the callback. But the values
    #   are stored in variable and are updated. 
    # I will create a function that calculates in real time and updates the publisher.
    # Float64Multiarray is used for Publishing data
    #   [leftConv, rightConv]
    # Data will be published from callback2
"""
global bInit
bInit = False

pubVelocity = rospy.Publisher('dConvSpeed',FloatList, queue_size=10)

def callback0(msg):
    #global bStartturnConv
    global bStartturnConv
    bStartturnConv = msg.data

def callback1(msg):
    global bStartTurn
    bStartTurn = msg.data

def callback2(msg):
    global bStopTurn
    bStopTurn = msg.data
    global vel_msg
    global pubVelocity
    global bTempStartTurnConv, bTempStartTurnProcess, bTurning, bInit
    pubVelocity.publish(vel_msg)
    if not bInit:
        bTempStartTurnConv = False
        bTempStartTurnProcess = False
        bTurning = False
        bInit = True
    # Control Loop 
    if bStartturnConv :
        bTempStartTurnConv = True
    
    if bStartTurn:
        bTempStartTurnProcess = True
    
    if bTempStartTurnConv and bTempStartTurnProcess and not bStartTurn:
        vel_msg.data = [0.05, -0.05]
        pubVelocity.publish(vel_msg)
        bTurning = True
    
    if bTempStartTurnConv and not bTurning:
        vel_msg.data = [0.05, 0.05]
        pubVelocity.publish(vel_msg) 

#def setVelocity():

def VelocityCalculation():
    rospy.init_node('convSpeed', anonymous=True)
    
    global vel_msg
    vel_msg = FloatList()
    vel_msg.data = [0,0]
    pubVelocity.publish(vel_msg)
    #while not rospy.is_shutdown():
    rospy.Subscriber("startTurnConveyor",Bool, callback0)
    rospy.Subscriber("startTurnProcess", Bool, callback1)
    rospy.Subscriber("stopTurnProcess", Bool, callback2)
    #ts = message_filters.TimeSynchronizer([bHandover, bStartTurn, bStopTurn], 3)

    #ts.registerCallback(callback)

    #print(bGetTurnConvReady.bHandover)
    #rospy.spin()
    #rate = rospy.Rate(10)
    #while not rospy.is_shutdown():
        #p#rint(bStartturnConv, "\t", bStartTurn, "\t", bStopTurn)
        #rate.sleep()
    #    vel_msg.data = [1.0,0]
    #    pubVelocity.publish(vel_msg)
    #   print()


if __name__ == '__main__':
    global vel_msg
    global bStartTurn, bStartturnConv, bStopTurn
    bStartturnConv = False
    bStartTurn = False
    bStopTurn = False
   # vel_msg = FloatList()
    VelocityCalculation()
    rospy.spin()