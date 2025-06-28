---
title: 'MarkerVision: A MATLAB Toolbox for Vision-Based Robot Pose Estimation with Fiducial Markers'
tags:
  - Matlab
  - Robotics
  - Tracking
authors:
  - name: Arun Niddish Mahendran
    affiliation: 1
    corresponding: true #
    orcid: 0000-0000-0000-0000
  - name: Alex H. Chang
    affiliation: 2
    orcid: 0000-0000-0000-0000
  - name: Vishesh Vikas
    affiliation: 1
    orcid: 0000-0000-0000-0000
  - name: Patrico A Vela
    affiliation: 2
    orcid: 0000-0000-0000-0000
affiliations:
 - name: The University of Alabama, Tuscaloosa, AL, USA
   index: 1
 - name: Georgia Institute of Technology, Atlanta, GA, USA 
   index: 2
date: 2025-06-28
bibliography: paper.bib
---

# Summary

MarkerVision is an open-source MATLAB toolbox/software that enables vision-based pose estimation of robots using inexpensive webcams and colored fiducial markers. It provides an accessible, low-cost solution for tracking the position and orientation of mobile robots without requiring specialized motion capture systems. The toolbox offers modular functions for camera calibration, color-based marker segmentation, and 2D pose computation, making it suitable for experimental robotics, education, and reproducible research workflows. This software was used in several of our research projects which have been published in top IEEE journals and conferences. 

# Statement of need

Precise pose estimation is essential for evaluating robot locomotion, control algorithms, and interaction with the environment. Commercial tracking systems (e.g., Vicon, OptiTrack) are often prohibitively expensive, limiting accessibility for many research labs and educational institutions. Existing open-source alternatives can require complex setup or specialized hardware. MarkerVision addresses this gap by providing a simple, MATLAB-based approach that only relies on commodity webcams and readily available colored markers, lowering the barrier for vision-based tracking in robotics research.

Localization in robotics refers to the process of determining the position and orientation of a robot to itself and the environment which is crucial in mobile robots for safe navigation, autonomous operation , finding locomotion modes (gait synthesis), path planning, and obstacle avoidance. Commercially available tracking technologies such as VICON, Optitrack, Xsens, Qualisys, Motion Analysis Corporation, TrackLab uses IMUs, GPS, reflective markers with infrared cameras, or a hybrid approach of these which is very expensive, and tedious to setup and extract useful information. Also, existing AprilTag technique (QR code based tracking) struggles to perform in various scenarios, including poor image quality (e.g., blur, low resolution, noise), incorrect tag configuration (size, family, or pose), and challenging environmental conditions such as occlusions, glare, or insufficient lighting. Additionally, software misconfigurations, inaccurate camera calibration, and hardware limitations may impact detection performance. Addressing these issues through careful system tuning and calibration is essential for reliable AprilTag-based localization. Here we use a simple setup employed with vision based tracking using simple inexpensive web-cameras with colored markers pasted on the robot acting as robot’s fiducials for a 2D planar motion. With arithmetic operation using the pixel data of the markers here we can find the se2 of the robot for both body and global. Nearest neighbor method employed to maintain consistent indexing of the markers. In case of occlusion of markers due to tether or any other objects, the markers are reconstructed using algorithm to ensure no loss of data. Overall this package is efficient, cheap, easy to setup, no need to remove the markers after experiments for analyzing 2D planar motion. Suitable for in lab setup and the main cost is only for buying a webcam.

# Mathematics

# Figures

![Marker detection pipeline.](figures/tracking_workflow.png){#fig:marker-detection}

# Citations
