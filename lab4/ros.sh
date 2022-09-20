#!/usr/bin/env bash
# exit when any command fails
set -e

sudo apt-get -qq update
sudo apt-get -qq install net-tools

# ROS repostitories and Gazebo
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' -y
sudo apt install curl -y
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
sudo add-apt-repository http://packages.osrfoundation.org/gazebo/ubuntu-stable -y

# install ros-noetic
sudo apt update  -y
sudo apt upgrade -y
sudo apt install ros-noetic-desktop-full -y
sudo apt install ros-noetic-rosbash -y

# tools and libraries 
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential  -y
sudo rosdep init
rosdep update
sudo apt-get -qq install ros-noetic-catkin -y
sudo apt-get -qq install python3-catkin-tools -y
sudo apt install python3-catkin-tools  -y
sudo apt install python3-osrf-pycommon  -y
sudo apt install libgtk-3-dev libncurses5-dev  -y

# software 
sudo apt install git  -y
sudo apt install synaptic  -y
sudo apt-get -qq install python3-numpy python3-scipy python3-matplotlib ipython3 python3-pandas python3-sympy python3-nose -y
sudo apt-get -qq install ros-noetic-slam-gmapping -y
sudo apt-get -qq install ros-noetic-gmapping -y

# Catkin and Texas Robotics Academy
source /opt/ros/noetic/setup.bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
git clone https://github.com/Texas-Robotics-Academy/texas_robotics_academy.git
cd ~/catkin_ws/
catkin build
source ~/catkin_ws/devel/setup.bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc

# Install Google Chrome and VSCode for x86 (AMC64) Ubuntu system
echo "For x86 (AMD64) Ubuntu, install Google Chrom and VSCode as follows:"
echo "  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
echo "  sudo apt install -y ./google-chrome-stable_current_amd64.deb"
echo "  sudo snap install --classic code  -y"
echo "For ARM64 Ubuntu, download and install VSCode at https://code.visualstudio.com/#alt-downloads"
echo "Google Chrome does not have an ARM64 version as of 2022/09/20."
