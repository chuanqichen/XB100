# noetic-configure

- `install_noetic_on_ubuntu20.sh` - General purpose script to (1) install ROS Noetic (2) set up the catkin_ws (3) set up asl_turtlebot and turtlebot packages on any Ubuntu 20.04 system. **Best script for student use.** Doesn't communicate with hardware.

- `configure_laptop.sh` - Everything you need to configure a laptop with ROS Noetic and communicate with the hardware of a ROBOTIS turtlebot 3. Created for Stanford's AA274 class, specifically for laptops in Skilling Lab.

- `install_noetic_on_genbu.sh` - Everything required to install ROS Noetic on Genbu machines. Unique attributes: uses bashrc.user instead of bashrc, doesn't communicate with hardware.

- `rostb3_noetic.sh` - Required for interfacing with hardware. Sets ROS variables like ROS_MASTER_URI, ROS_IP, and ROS_HOSTNAME to communicate with turtlebot.
