# aws-ros-monitoringmessages-ros1
ROS packages for facilitating the use of AWS cloud services.

### Build status

* Travis CI: [![Build Status](https://travis-ci.org/aws-robotics/monitoringmessages-ros1.svg?branch=master)](https://travis-ci.org/aws-robotics/monitoringmessages-ros1)
 * ROS build farm:
   * v1.0.0:
     * ROS Kinetic @ u16.04 Xenial [![Build Status](http://build.ros.org/job/Kbin_uX64__ros_monitoring_msgs__ubuntu_xenial_amd64__binary/badge/icon)](http://build.ros.org/job/Kbin_uX64__ros_monitoring_msgs__ubuntu_xenial_amd64__binary)

## Installation

### Binaries
On Ubuntu you can install the latest version of this package using the following command

        sudo apt-get update
        sudo apt-get install -y ros-kinetic-ros-monitoring-msgs

### Building from Source

To build from source you'll need to create a new workspace, clone and checkout the latest release branch of this repository, install all the dependencies, and compile. If you need the latest development features you can clone from the `master` branch instead of the latest release branch. While we guarantee the release branches are stable, __the `master` should be considered to have an unstable build__ due to ongoing development. 

- Create a ROS workspace and a source directory

    mkdir -p ~/ros-workspace/src

- Clone the package into the source directory . 

_Note: Replace __`{MAJOR.VERSION}`__ below with the latest major version number to get the latest release branch._

        cd ~/ros-workspace/src
        git clone https://github.com/aws-robotics/monitoringmessages-ros1.git -b release-v{MAJOR.VERSION}

- Install dependencies

        cd ~/ros-workspace 
        sudo apt-get update && rosdep update
        rosdep install --from-paths src --ignore-src -r -y
        
_Note: If building the master branch instead of a release branch you may need to also checkout and build the master branches of the packages this package depends on._

- Build the packages

        cd ~/ros-workspace && colcon build

- Configure ROS library Path

        source ~/ros-workspace/install/setup.bash
