#!/usr/bin/env python3

import rospy
from std.msgs.msg import *

def bGetTurnConvReady(data):
    bHandovertoTurnCov = data.data

def bStartTurnProcess(data):
    bStartPackageTurn = data.data

def bStopTurnProcess(data):
    bStopPackageTurn = data.data


def VelocityCalculation():
    rospy.init_node('convSpeed', anonymous=True)
    rospy.Subscriber("startTurnConveyor",Bool, bGetTurnConvReady)
    rospy.Subscriber("startTurnProcess", Bool, bStartTurnProcess)
    rospy.Subscriber("stopTurnProcess", Bool, bStopTurnProcess)

    pubVelocity = rospy.Publisher('dConvSpeed', float64[], queue_size=10)

    while not rospy.is_shutdown():
        print(bHandovertoTurnCov, "\t", bStartPackageTurn, "\t", bStopPackageTurn)


id __name__ == '__main__':
    VelocityCalculation()