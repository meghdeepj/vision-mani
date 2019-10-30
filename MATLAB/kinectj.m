supportPackageInstaller
%% 

info = imaqhwinfo('kinect')
info.DeviceInfo(1)
colorVid = videoinput('kinect',1, 'RGB_640x480');
colorVid.FramesPerTrigger = 1;
src = getselectedsource(colorVid);
preview(colorVid);
%% 

info.DeviceInfo(2)
depthVid = videoinput('kinect', 2, 'Depth_640x480');
src = getselectedsource(depthVid);
depthImage = getsnapshot(depthVid);
imshow(depthImage, [0 4000]);
preview(depthVid);
