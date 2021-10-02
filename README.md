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

