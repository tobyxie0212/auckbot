\\record current sensor data
rostopic echo -p /current >experiments/A_2015_07_26_16_09.txt

\\get actual pose and position of robot
rosrun tf tf_echo /map /base_link

