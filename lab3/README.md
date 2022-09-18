# Lab3 agenda
1. check Ubuntu setup 
2. check Simulator setup 
3. review git command 
4. review simulator startup and stop 
5. review how to run simlator scene: 1-3 
6. Homework: Additional scenes 
7. Advanced topics: Jupter notebook 
   * https://github.com/chuanqichen/XB100/tree/main/lab3/advanced

### get latest update
```
cd 
cd XB100
git pull
```

### go to lab3 folder
```
cd lab3
unzip EV-R3P_1.3.1.zip
```

### how to run simulator 
```
cd 
cd CoppeliaSim_Edu_V4_3_0_rev10_Ubuntu20_04
./coppeliaSim.sh
```
### Homework: Additional scenes 
Once CoppeliaSim is open you will want to run one of the scenes below. To run any of them, you first run CoppeliaSim, then you click File->Open scene... and open one of the ttt files that are listed for each scene. Then click either the Play button from the top toolbar or click Simulation->Start simulation and a GUI should pop up. Clicking the Stop button or Simulation->Stop simulation will close the GUI and stop the simulation.

The "interactive" scenes allow you to visualize the robot as you change its configuration using sliders. The "CSV" scenes allow animations of a robot based on a trajectory stored in a comma-separated values file, where each line corresponds to a timestep and consists of comma-separated numbers specifying the robot's configuration at that timestep. There are no joint limits in the "CSV" scenes.

#### Scene 4: CSV Animation youBot
This scene animates the motion of the youBot based on a csv file representing the trajectory of the robot. Each row of the csv file represents a timestep and each column of the csv file is a configuration variable through time. The csv file has either 12 or 13 columns. Columns 1-3 represent the mobile base configuration variables, ordered as (phi, x, y), where phi is the angle of the base and (x, y) is the location of its center. Columns 4-8 represent the five arm joint angles, joint 1 through joint 5. Columns 9-12 represent the wheel angles, where wheel 1 is column 9 and wheel 4 is column 12, and the numbering of the wheels is shown in the figure on the right. Column 13 is optional. If it is present, then 0 means the gripper is open and 1 means the gripper is closed. If there is no column 13, then the gripper is open by default. All angles are specified in radians.

Scene 4 files:
* Scene4_youBot_csv.ttt: the CoppeliaSim scene file.
* Scene4_example.csv: an example input file.
* Scene4_base_motions: this folder has five basic motions of the youBot mobile base, showing the correct wheel motions associated with some basic motions of mobile base. You can check that your wheeled mobile base kinematics (or odometry) are correct by comparing your wheel motions to the wheel motions in these .csv files.
  * yb1.csv: Constant speed spin in place (wheels on the left side and right side of the robot move at opposite speeds).
  * yb2.csv: Constant speed forward motion (all wheels move at the same speed).
  * yb3.csv: Constant speed sideways motion (wheels on opposite corners move at the same speed).
  * yb4.csv: Constant speed diagonal motion (wheels 2 and 4 move at the same speed while wheels 1 and 3 are stationary).
  * yb5.csv: Constant speed diagonal motion (wheels 1 and 3 move at the same speed while wheels 2 and 4 are stationary).

#### Scene 5: CSV Motion Planning Kilobot
This scene allows you to visualize motion planning on an undirected graph using graph-search techniques such as A*. To visualize the planned motion, we are using the kilobot robot moving in a planar square environment of dimensions -0.5 <= x <= 0.5 and -0.5 <= y <= 0.5. Obstacles are represented as cylinders, and the graph itself is illustrated as blue nodes with yellow edges. The path that the kilobot actually follows is indicated by green edges, and the goal node is in red. See the image to the right.

This scene does not do motion planning. Instead, it displays the output of your motion planner. It expects you to provide the path to a folder with four files, named nodes.csv, edges.csv, path.csv, and obstacles.csv:

* nodes.csv: If the graph has N nodes, then this file has N rows. Each row is of the form ID,x,y,heuristic-cost-to-go. ID is the unique integer ID number of the node, and these ID numbers should take values 1 through N. x, y are the (x,y) coordinates of the node in the plane. heuristic-cost-to-go is an optimistic approximation of the shortest path from this node to the goal node (e.g., the Euclidean distance to the goal node). This heuristic information is useful for A-star search but is not represented in the visualization of the path.
* edges.csv: If the graph has E edges, then this file has E rows. Each row is of the form ID1,ID2,cost. ID1 and ID2 are the node IDs of the nodes connected by the edge. cost is the cost of traversing that edge. This file can be empty if you do not wish to display edges.
* path.csv: This file specifies the solution path in the graph, and it is a single line, of the form ID1,ID2,... The first number is the ID of the first node in the solution path, and the last number is the ID of the last node in the solution path. If there is no solution to the motion planning problem, the path can consist of a single ID number, the ID of the node where the robot starts (and stays).
* obstacles.csv: This file specifies the locations and diameters of the circular obstacles. Each row is x, y, diameter, where (x,y) is the center of the obstacle and diameter is the diameter of the obstacle. This file can be empty if there are no obstacles.
Nothing prevents you from providing files with nodes or edges inside obstacles. The path.csv file is the output of a graph search planner. Inputs to the planner could be the obstacles.csv file and a specification of the positions of the start and goal nodes, or it could be the nodes.csv and edges.csv files and a specification of the start and goal nodes, or it could be other information, depending on your planner. But in any case, this scene requires the four files above for the visualization.

Scene 5 files:
* Scene5_motion_planning.ttt: the CoppeliaSim scene file.
* Scene5_example.zip: a directory containing example input files nodes.csv, edges.csv, path.csv, and obstacles.csv.

#### Scene 6: CSV Mobile Manipulation youBot
This scene has a youBot mobile manipulator and a cube. The youBot is expected to pick up the cube and put it down at a goal location ("pick and place"). This scene animates a user-specified csv file specifying the motion of the youBot, much as in Scene 4, except now the gripper interacts dynamically with the cube. Each row of the csv file has 13 variables: 3 for the chassis configuration (phi, x, y), 5 for the arm joint angles, 4 for the wheel angles (where the wheels are numbered as shown in Scene 4), and 1 for the gripper state (0 = open, 1 = closed). Unlike previous csv visualization scenes where CoppeliaSim simply makes a movie of the configurations, and there is no notion of the simulated time between successive lines in the csv file, this CoppeliaSim scene is performing a dynamic simulation, so the time between each line is important to determine the dynamic behavior. The simulated time between each line of the csv file is 0.01 seconds (10 milliseconds).

The gripper of the youBot and the cube are dynamically modeled to simulate practical pick-and-place. In other words, if the gripper does not close on the block properly, it may slide away, and if you open the gripper when it is holding a block, the block will fall to the floor. The interaction between the gripper and the block is governed by a "physics engine," which approximately accounts for friction, mass, inertial, and other properties. The default physics engine for this scene is ODE.

Gripper opening and closing may take up to approximately 0.625 seconds. Assume, for example, that the first 100 lines of your csv file have the gripper state as 0 (open). Then, on line 101, you change the gripper state to 1 (closed). This transition from 0 to 1 initiates the closing action, but the closing may not actually complete for 0.625 seconds. So you should keep the gripper state at 1 for at least 63 consecutive lines of your csv file to ensure that the gripper closes all the way. Similarly, it may take up to 0.625 seconds for the gripper to open, so you should keep the gripper state at 0 for at least 63 consecutive lines to ensure that the gripper opens all the way. Gripper opening/closing actually terminates when a force threshold is reached on the fingers or the fingers have completed the motion.

You can set the initial and goal configurations of the cube with a GUI inside the scene, but the default initial configuration is $(x,y,\theta) = (1~\text{m}, 0~\text{m}, 0~\text{rad})$ and the goal configuration is at $(x,y,\theta) = (0~\text{m},-1~\text{m},-\pi/2~\text{rad})$.

Scene 6 files:
* Scene6_youbot_cube.ttt: the CoppeliaSim scene file.
* Scene6_example.csv: an example input file solving the task when the cube's initial and goal configurations are the defaults.

#### Scene 7: CSV Animation MTB
This scene simulates a RRPR robot. It animates a csv file containing a trajectory of joint angles. Each column of the csv file is the joint angle/length through time for one of the joints (in the order of RRPR). A single row of the csv file represents a complete configuration of the robot at a particular time. The prismatic joint (P) has the joint limit range [0, 0.2]. The assumed time step between rows is equal to the time step that CoppeliaSim uses for simulation; the default is 0.05 seconds.

Scene 7 files:
* Scene7_MTB_csv.ttt: the CoppeliaSim scene file.
* Scene7_example.csv: An example input file.
