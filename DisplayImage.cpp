#include <stdio.h>
#include <opencv2/opencv.hpp>

using namespace cv;

int main (int argc, char** argv){

	if (argc !=2){
		cout << "usage: DisplayImage.out <Image_Path>" << endl;
		return -1;
	}

	Mat image;
	image = imread( argv[1], 1);

	if (!image.data){
		cout << "No image data" << endl;
		return -1;
	}
	nameWindow("Display Image", WINDOW_AUTOSIZE);
	imshow("Display Image", image);

	waitkey(0);
	return 0;
}  //end of code


