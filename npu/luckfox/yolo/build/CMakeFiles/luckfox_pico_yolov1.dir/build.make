# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yushan/jdm/yolo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yushan/jdm/yolo/build

# Include any dependencies generated for this target.
include CMakeFiles/luckfox_pico_yolov1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/luckfox_pico_yolov1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/luckfox_pico_yolov1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/luckfox_pico_yolov1.dir/flags.make

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/flags.make
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o: ../luckfox_pico_yolov1/src/main.cc
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yushan/jdm/yolo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o -MF CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o.d -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o -c /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/main.cc

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.i"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/main.cc > CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.i

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.s"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/main.cc -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.s

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/flags.make
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o: ../luckfox_pico_yolov1/src/postprocess.cc
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yushan/jdm/yolo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o -MF CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o.d -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o -c /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/postprocess.cc

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.i"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/postprocess.cc > CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.i

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.s"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/postprocess.cc -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.s

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/flags.make
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o: ../luckfox_pico_yolov1/src/yolov1.cc
CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o: CMakeFiles/luckfox_pico_yolov1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yushan/jdm/yolo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o -MF CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o.d -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o -c /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/yolov1.cc

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.i"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/yolov1.cc > CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.i

CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.s"
	/home/yushan/jdm/luckfox/luckfox-pico//tools/linux/toolchain/arm-rockchip830-linux-uclibcgnueabihf/bin/arm-rockchip830-linux-uclibcgnueabihf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yushan/jdm/yolo/luckfox_pico_yolov1/src/yolov1.cc -o CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.s

# Object files for target luckfox_pico_yolov1
luckfox_pico_yolov1_OBJECTS = \
"CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o" \
"CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o" \
"CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o"

# External object files for target luckfox_pico_yolov1
luckfox_pico_yolov1_EXTERNAL_OBJECTS =

luckfox_pico_yolov1: CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/main.cc.o
luckfox_pico_yolov1: CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/postprocess.cc.o
luckfox_pico_yolov1: CMakeFiles/luckfox_pico_yolov1.dir/luckfox_pico_yolov1/src/yolov1.cc.o
luckfox_pico_yolov1: CMakeFiles/luckfox_pico_yolov1.dir/build.make
luckfox_pico_yolov1: ../3rdparty/rknpu2/Linux/armhf-uclibc/librknnmrt.so
luckfox_pico_yolov1: ../lib/libopencv_core.a
luckfox_pico_yolov1: ../lib/libopencv_features2d.a
luckfox_pico_yolov1: ../lib/libopencv_highgui.a
luckfox_pico_yolov1: ../lib/libopencv_imgproc.a
luckfox_pico_yolov1: ../lib/libopencv_photo.a
luckfox_pico_yolov1: ../lib/libopencv_video.a
luckfox_pico_yolov1: utils.out/libimageutils.a
luckfox_pico_yolov1: utils.out/libfileutils.a
luckfox_pico_yolov1: utils.out/libimagedrawing.a
luckfox_pico_yolov1: lib/Config/libConfig.a
luckfox_pico_yolov1: lib/GUI/libGUI.a
luckfox_pico_yolov1: lib/LCD/libLCD.a
luckfox_pico_yolov1: lib/SPI/libSPI.a
luckfox_pico_yolov1: lib/GPIO/libGPIO.a
luckfox_pico_yolov1: ../lib/libopencv_imgproc.a
luckfox_pico_yolov1: ../lib/libopencv_core.a
luckfox_pico_yolov1: ../3rdparty/jpeg_turbo/Linux/armhf_uclibc/libturbojpeg.a
luckfox_pico_yolov1: ../3rdparty/librga/Linux/armhf_uclibc/librga.a
luckfox_pico_yolov1: lib/Config/libConfig.a
luckfox_pico_yolov1: lib/SPI/libSPI.a
luckfox_pico_yolov1: lib/GPIO/libGPIO.a
luckfox_pico_yolov1: CMakeFiles/luckfox_pico_yolov1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yushan/jdm/yolo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable luckfox_pico_yolov1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/luckfox_pico_yolov1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/luckfox_pico_yolov1.dir/build: luckfox_pico_yolov1
.PHONY : CMakeFiles/luckfox_pico_yolov1.dir/build

CMakeFiles/luckfox_pico_yolov1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/luckfox_pico_yolov1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/luckfox_pico_yolov1.dir/clean

CMakeFiles/luckfox_pico_yolov1.dir/depend:
	cd /home/yushan/jdm/yolo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yushan/jdm/yolo /home/yushan/jdm/yolo /home/yushan/jdm/yolo/build /home/yushan/jdm/yolo/build /home/yushan/jdm/yolo/build/CMakeFiles/luckfox_pico_yolov1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/luckfox_pico_yolov1.dir/depend

