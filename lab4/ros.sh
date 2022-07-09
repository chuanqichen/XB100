#!/usr/bin/env bash
sudo apt-get -qq update
echo "initial update...done"
sudo apt-get -qq install net-tools
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
sudo add-apt-repository http://packages.osrfoundation.org/gazebo/ubuntu-stable
sudo apt update
sudo apt upgrade -y
sudo apt install ros-noetic-desktop-full
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential`
sudo apt install python3-catkin-tools`
sudo apt install python3-osrf-pycommon`
sudo apt install libgtk-3-dev libncurses5-dev`
sudo apt install git`
sudo snap install --classic code
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb

source /opt/ros/noetic/setup.bash`
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc`
source ~/.bashrc`

sudo rosdep init
rosdep update
cd
rosrun texas_robotics_academy teleop_texbot
ls
roslaunch texas_robotics_academy test_world.launch 

cd
mkdir catkin_ws
cd catkin_ws/
mkdir src
cd src
catkin_init_workspace
git clone https://github.com/Texas-Robotics-Academy/texas_robotics_academy.git
cd ..
catkin build
cd 
pwd
gedit ~/.bashrc 
