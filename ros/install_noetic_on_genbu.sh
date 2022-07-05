#!/usr/bin/env bash
sudo apt-get -qq update
echo "initial update...done"
sudo apt-get -qq install net-tools
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get -qq update -y
sudo apt install ros-noetic-desktop-full -y
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc.user
source ~/.bashrc.user
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential -y
sudo rosdep init
rosdep update
sudo apt-get -qq install ros-noetic-catkin -y
sudo apt-get -qq install python3-catkin-tools -y
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc.user
source ~/.bashrc.user
echo "Check ROS_PACKAGE_PATH below (should be /home/<pathtouser>/catkin_ws/src:/opt/ros/noetic/share)"
echo $ROS_PACKAGE_PATH
echo "git cloning repos"
sudo apt-get -qq install python3-numpy python3-scipy python3-matplotlib ipython3 python3-pandas python3-sympy python3-nose -y
sudo apt-get -qq install ros-noetic-slam-gmapping -y
sudo apt-get -qq install ros-noetic-gmapping -y
cd ~/catkin_ws/src
git clone https://github.com/StanfordASL/asl_turtlebot.git
echo "alias rostb3='source ~/catkin_ws/src/asl_turtlebot/rostb3.sh'" >> ~/.bashrc.user
echo "alias roslocal='source ~/catkin_ws/src/asl_turtlebot/roslocal.sh'" >> ~/.bashrc.user
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc.user
cd ~/catkin_ws/src/
git clone --quiet https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
cd ~/catkin_ws/src/
git clone --quiet https://github.com/ROBOTIS-GIT/turtlebot3.git
cd ~/catkin_ws && catkin_make
echo "Installing VSCode..."
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y
echo "All done."
