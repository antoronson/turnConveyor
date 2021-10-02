# turnConveyor
A simple turning mechanism for Intralogistics

Step 1:
A simple turn conveyor under reverse turning mechanism is created. 

Components:
    --> 3 Conveyors
        --> Turn Process        = 2
        --> Transfer Process    = 1
    --> Ultrasonic Sensors
        --> Start Turn Conveyor
        --> Start the Turn Process
        --> Stop the Turn Process and Start the Transfer
    --> Test Package
    --> Mechanism to detect the Package turned angle


Interface:
    -> BOOL bStartTurnConveyor
    -> BOOL bStartTurnProcess
    -> BOOL bStopTurnProcess
    -> REAL rTurnSpeed
    -> REAL rTransferSpeed

Tasks
    ==> 1. Concept Validation using Physics Simulation
    ==> 2. Interface defenition for ROS
    ==> 3. Ros Setup. 

1. Concept Validation:
    Here a simple model was built in Coppelia Sim Software. 
    This model can turn a package.
    However, the orientation of the package cannot be determined. 
    Idea 1 - 
        Use the dynamics data like, Pakage Dimension, Speed and time. 
        With the above data, the orientation can be predicted. 
        