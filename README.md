# aws-ros-monitoringmessages-ros1
`ros_monitoring_msgs` package for facilitating the use of monitoring-related AWS cloud services.

This package primarily provides ROS message types for use with Amazon CloudWatch, and is used by the [cloudwatch_metrics_collector](https://github.com/aws-robotics/cloudwatchmetrics-ros1) node. 
For example, the `MetricData` message corresponds to a [MetricDatum](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html), and the `MetricDimension` to [Dimension](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_Dimension.html). 

### Supported ROS Distributions
* Kinetic
* Melodic

### Build status
* Travis CI:
    * "master" branch [![Build Status](https://travis-ci.org/aws-robotics/monitoringmessages-ros1.svg?branch=master)](https://travis-ci.org/aws-robotics/monitoringmessages-ros1/branches)
    * "release-latest" branch [![Build Status](https://travis-ci.org/aws-robotics/monitoringmessages-ros1.svg?branch=release-latest)](https://travis-ci.org/aws-robotics/monitoringmessages-ros1/branches)
* ROS build farm:
    * ROS Kinetic @ u16.04 Xenial [![Build Status](http://build.ros.org/job/Kbin_uX64__ros_monitoring_msgs__ubuntu_xenial_amd64__binary/badge/icon)](http://build.ros.org/job/Kbin_uX64__ros_monitoring_msgs__ubuntu_xenial_amd64__binary)
    * ROS Melodic @ u18.04 Bionic [![Build Status](http://build.ros.org/job/Mbin_uB64__ros_monitoring_msgs__ubuntu_bionic_amd64__binary/badge/icon)](http://build.ros.org/job/Mbin_uB64__ros_monitoring_msgs__ubuntu_bionic_amd64__binary)


## Installation

### Binaries
On Ubuntu you can install the latest version of this package using the following command

        sudo apt-get update
        sudo apt-get install -y ros-$ROS_DISTRO-ros-monitoring-msgs

### Building from Source

To build from source you'll need to create a new workspace, clone and checkout the latest release branch of this repository, install all the dependencies, and compile. If you need the latest development features you can clone from the `master` branch instead of the latest release branch. While we guarantee the release branches are stable, __the `master` should be considered to have an unstable build__ due to ongoing development. 

- Install build tool: please refer to `colcon` [installation guide](https://colcon.readthedocs.io/en/released/user/installation.html)

- Create a ROS workspace and a source directory

        mkdir -p ~/ros-workspace/src

- Clone the package into the source directory . 

        cd ~/ros-workspace/src
        git clone https://github.com/aws-robotics/monitoringmessages-ros1.git -b release-latest

- Install dependencies

        cd ~/ros-workspace 
        sudo apt-get update && rosdep update
        rosdep install --from-paths src --ignore-src -r -y
        
_Note: If building the master branch instead of a release branch you may need to also checkout and build the master branches of the packages this package depends on._

- Build the packages

        cd ~/ros-workspace && colcon build

- Configure ROS library path

        source ~/ros-workspace/install/setup.bash
