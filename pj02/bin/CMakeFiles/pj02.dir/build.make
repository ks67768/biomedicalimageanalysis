# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/karolinasabonaityte/pj02/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/karolinasabonaityte/pj02/bin

# Include any dependencies generated for this target.
include CMakeFiles/pj02.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pj02.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pj02.dir/flags.make

CMakeFiles/pj02.dir/pj02.cxx.o: CMakeFiles/pj02.dir/flags.make
CMakeFiles/pj02.dir/pj02.cxx.o: /Users/karolinasabonaityte/pj02/src/pj02.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karolinasabonaityte/pj02/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pj02.dir/pj02.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pj02.dir/pj02.cxx.o -c /Users/karolinasabonaityte/pj02/src/pj02.cxx

CMakeFiles/pj02.dir/pj02.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pj02.dir/pj02.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karolinasabonaityte/pj02/src/pj02.cxx > CMakeFiles/pj02.dir/pj02.cxx.i

CMakeFiles/pj02.dir/pj02.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pj02.dir/pj02.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karolinasabonaityte/pj02/src/pj02.cxx -o CMakeFiles/pj02.dir/pj02.cxx.s

# Object files for target pj02
pj02_OBJECTS = \
"CMakeFiles/pj02.dir/pj02.cxx.o"

# External object files for target pj02
pj02_EXTERNAL_OBJECTS =

pj02: CMakeFiles/pj02.dir/pj02.cxx.o
pj02: CMakeFiles/pj02.dir/build.make
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkdouble-conversion-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitksys-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvnl_algo-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvnl-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkv3p_netlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitknetlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvcl-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKCommon-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkNetlibSlatec-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKStatistics-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKTransform-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKLabelMap-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKMesh-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkzlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKMetaIO-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKSpatialObjects-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKPath-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKQuadEdgeMesh-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOImageBase-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKOptimizers-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKPolynomials-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKBiasCorrection-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKBioCell-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKDICOMParser-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKEXPAT-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOXML-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOSpatialObjects-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKFEM-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmDICT-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmMSFF-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKznz-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKniftiio-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKgiftiio-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkhdf5_cpp.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkhdf5.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOBMP-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOBioRad-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOBruker-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOCSV-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOGDCM-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOIPL-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOGE-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOGIPL-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOHDF5-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkjpeg-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOJPEG-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitktiff-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTIFF-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOLSM-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkminc2-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOMINC-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOMRC-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOMesh-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOMeta-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIONIFTI-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKNrrdIO-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIONRRD-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkpng-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOPNG-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOSiemens-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOStimulate-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKTransformFactory-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTransformBase-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTransformHDF5-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTransformInsightLegacy-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTransformMatlab-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOVTK-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKKLMRegionGrowing-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitklbfgs-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKOptimizersv4-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKVTK-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKVideoCore-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKVideoIO-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKWatersheds-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOXML-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmMSFF-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmDICT-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmIOD-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmDSED-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmCommon-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmjpeg8-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmjpeg12-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmjpeg16-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmopenjp2-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmcharls-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkgdcmuuid-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTIFF-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitktiff-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkjpeg-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkminc2-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKgiftiio-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKEXPAT-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKMetaIO-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKniftiio-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKznz-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKNrrdIO-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkpng-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOIPL-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkhdf5_cpp.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkhdf5.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkzlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOTransformBase-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKTransformFactory-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKOptimizers-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitklbfgs-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKIOImageBase-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKVideoCore-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKStatistics-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkNetlibSlatec-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKSpatialObjects-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKMesh-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKTransform-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKPath-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKCommon-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkdouble-conversion-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitksys-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libITKVNLInstantiation-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvnl_algo-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvnl-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkv3p_netlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitknetlib-4.13.a
pj02: /Users/karolinasabonaityte/itk/bin/lib/libitkvcl-4.13.a
pj02: CMakeFiles/pj02.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/karolinasabonaityte/pj02/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pj02"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pj02.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pj02.dir/build: pj02

.PHONY : CMakeFiles/pj02.dir/build

CMakeFiles/pj02.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pj02.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pj02.dir/clean

CMakeFiles/pj02.dir/depend:
	cd /Users/karolinasabonaityte/pj02/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/karolinasabonaityte/pj02/src /Users/karolinasabonaityte/pj02/src /Users/karolinasabonaityte/pj02/bin /Users/karolinasabonaityte/pj02/bin /Users/karolinasabonaityte/pj02/bin/CMakeFiles/pj02.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pj02.dir/depend

