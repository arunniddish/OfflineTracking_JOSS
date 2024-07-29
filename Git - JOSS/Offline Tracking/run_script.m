%========================================================================================
% Script Name: run_script.m
% Author: Arun Niddish Mahendran
% Last modified date: 2024-MM-DD
% Description: Briefly describe what this script does.
% Inputs:
% 1) "input_vid_dir": Path to directory of the video to be
%                     tracked.
%
% 2) "vid_name"     : Video's name with the extension to be
%                     tracked.
% 
% 3) "output_vid_filename" : Specify any name with the extension
%                            to save the animation of tracked
%                            file
% 4) "params.number_of_markers" : Number of markers on the body 
%                                 to be tracked
%
% Outputs: 
% 1) "tracking_data" : Centroid data (x,y,z) of the respective markers on the robot,
%                      global rotation and translation matrix; body
%                      rotation and translation matrix.
%
% The data are in the following order:
% 1 to 3 [1x3] Marker 1 [x,y,z]
% 4 to 6 [1x3] Marker 2 [x,y,z]
% 7 to 9 [1x3] Marker 3 [x,y,z]
% 10 to 12 [1x3] Marker 4 [x,y,z]
% 13 to 21 [1x9] Rotation matrix Intermediate frames [Reshaped from 3x3 to 1x9]
% 22 to 24 [1x3] Translation Matrix Intermediate frames [[x,y,z]Reshaped from 3x1 to 1x3]
% 25 to 33 [1x9] Rotation matrix Global frame [Reshaped from 3x3 to 1x9]
% 34 to 36 [1x3] Translation Matrix Global frame [[x,y,z]Reshaped from 3x1 to 1x3]
% 37 [1x1] Timestamp
%=========================================================================================

clear all;
clc;

% Adding dependencies
% addpath('../');

% Video file information
input_vid_dir = 'D:\Arun Niddish\Vision\Visual Tracking\Fabrication Paper Final Test\Purple New 2\Translation';
vid_name = 'Purple_12(00)_5.mp4';
input_vid_filename = fullfile(input_vid_dir,vid_name);
output_vid_filename = 'Purple_12(00)_5_gcf.mp4';

% Instantiate a video objects for this video.
params.vread = VideoReader(input_vid_filename);
params.vwrite = VideoWriter(output_vid_filename,'MPEG-4');
open(params.vwrite);

% Tracking parameters
params.number_of_markers = 4;

% Choose overlay image (Yes/No - 1/0)
params.overlay = 0;

% Initilaize
tracker_obj = OfflineTracking(params);

% Call tracking function 
[output_data] =  tracker_obj.tracking();
ts = load(fullfile(input_vid_dir,'Purple_12(00)_5_timestamp.mat'));
tracking_data = [output_data ts.time_stamp];


