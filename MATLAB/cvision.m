%CVision with Kinect

%% Initialise ROS
rosshutdown;
rosinit ('http://169.254.231.152:11311/');
%% list nodes
rosnode list

%% list topics
rostopic list

%% subscribe to topics
imSub = rossubscriber('/camera/rgb/image_raw');
pcSub = rossubscriber('/camera/depth/points');

%% visualise data
testIm = readImage(imSub.LatestMessage);
figure;
imshow(testIm);

%% create pointcloud and visualise

pcMsg = pcSub.LatestMessage;
ptCloud = pointCloud(readXYZ(pcMsg));
figure;
pcshow(ptCloud, 'VerticalAxisDir','down');
xlabel('X');ylabel('Y'); zlabel('Z');
curLim = axis();
curLim(1) = -0.5;
curLim(1) = -0.5;
axis(curLim);

%% end of code 
