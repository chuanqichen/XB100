# ROS Step by Step Manual Installation 

```
sudo apt-get -qq update
sudo apt-get -qq install net-tools
```

# ROS repostitories and Gazebo 
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' -y
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
sudo add-apt-repository http://packages.osrfoundation.org/gazebo/ubuntu-stable
```

# install ros-noetic
```
sudo apt update  -y
sudo apt upgrade -y
sudo apt install ros-noetic-desktop-full -y
sudo apt install ros-noetic-rosbash -y
sudo apt install curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
source ~/.bashrc
```

# tools and libraries 
```
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential  -y
sudo rosdep init
rosdep update
sudo apt-get -qq install ros-noetic-catkin -y
sudo apt-get -qq install python3-catkin-tools -y
sudo apt install python3-catkin-tools  -y
sudo apt install python3-osrf-pycommon  -y
sudo apt install libgtk-3-dev libncurses5-dev  -y
```

# software 
```
sudo apt install git  -y
sudo snap install --classic code  -y
sudo apt install synaptic  -y
source ~/.bashrc  -y
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc
echo "Check ROS_PACKAGE_PATH below (should be /home/<pathtouser>/catkin_ws/src:/opt/ros/noetic/share)"
echo $ROS_PACKAGE_PATH
echo "git cloning repos"
sudo apt-get -qq install python3-numpy python3-scipy python3-matplotlib ipython3 python3-pandas python3-sympy python3-nose -y
sudo apt-get -qq install ros-noetic-slam-gmapping -y
sudo apt-get -qq install ros-noetic-gmapping -y
```

# Robotics simulator
```
cd ~/catkin_ws/
mkdir src
cd src
catkin_init_workspace
git clone https://github.com/Texas-Robotics-Academy/texas_robotics_academy.git
cd ~/catkin_ws/
catkin build
```

