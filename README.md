# OfflineTracking_JOSS

This readme helps in navigating through the paper where more in depth details are needed to setup the tracking framework. In this, we will go through the following:

1) Initial camera setup: Adjusting the camera properties for tracking using MATLAB ToolBox
2) Generating Chromatic Mask: In MATLAB how do we use the Toolbox to create a color mask. Here we use HSV color space.
3) Parallel Processing: Initializing parallel processing using MATLAB ToolBox

## A. Initial camera setup (See Section III-A)

These colored markers are usually not vibrant as they could be when seeing through the camera. This is due to heavy enviroment lighting which over exposures the marker. For this reason, the markers look more whitewashed. However, by strategically adjusting the camera settings, the markers can be vibrantly dominated in the scene while the environment is dulled. To do this, we use MATLAB Color Thresholder App. This app is a part of the MATLAB's **Image Processing Toolbox**.

## B. Generating Chromatic Mask (See Section III-B)

For creating the color mask to segment the markers. 

## C. Parallel Processing



