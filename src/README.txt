

	Karolina Sabonaityte
	811997422
	CSCI 4850

	If the program is already compiled, skip this step:
		To compile the program, go into /pj02/bin/ and type 'make'.
		This will create pj02.exe in the /pj02/bin/ directory.
	
	To run the program for ROTATION, type:
	$ ./pj02 rotation inputImageFile outputImageFile degrees

	To run the program for TRANSLATION, type:
	$ ./pj02 translation inputImageFile outputImageFile translationX translationY

	To run the program for SCALING, type:
	$ ./pj02 scaling inputImageFile outputImageFile scale
	(scale > 0, the larger the int the smaller the outputImage)

	All three transformations can be used on the same image, and
	each transformation can be called on an already transformed image.

	The program outputs the threshold image in .hdr and .img 
	files with the output file name provided in the argument.

	These new transformed images can be opened with a visualizer.
	The vizualizer I used to test the program is MRIcro.


