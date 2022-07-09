#!/usr/bin/env bash
sudo apt-get -qq update
echo "initial update...done"
sudo apt-get -qq install net-tools
# ROS repostitories and Gazebo 
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' -y
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
sudo add-apt-repository http://packages.osrfoundation.org/gazebo/ubuntu-stable
# install ros-noetic
sudo apt update  -y
sudo apt upgrade -y
sudo apt install ros-noetic-desktop-full -y
sudo apt install ros-noetic-rosbash -y

# tools and libraries 
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential  -y
sudo apt install python3-catkin-tools  -y
sudo apt install python3-osrf-pycommon  -y
sudo apt install libgtk-3-dev libncurses5-dev  -y

# software 
sudo apt install git  -y
sudo snap install --classic code  -y
sudo apt install synaptic  -y
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo apt install -y ./google-chrome-stable_current_amd64.deb

source /opt/ros/noetic/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc  -y
sudo rosdep init  -y
rosdep update  -y

cd
mkdir catkin_ws
cd catkin_ws/
mkdir src
cd src
catkin_init_workspace
git clone https://github.com/Texas-Robotics-Academy/texas_robotics_academy.git
cd ..
catkin build
