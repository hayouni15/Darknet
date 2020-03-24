

# Darknet #
Darknet is an open source neural network framework written in C and CUDA. It supports CPU and GPU computation.

#  Requirements :
- CMake >= 3.8 for modern CUDA support: https://cmake.org/download/
- CUDA 10.0: https://developer.nvidia.com/cuda-toolkit-archive (on Linux do Post-installation Actions)
- OpenCV >= 2.4: use your preferred package manager (brew, apt), build from source using vcpkg or download from OpenCV official site (on Windows set system variable OpenCV_DIR = C:\opencv\build - where are the include and x64 folders image)
- cuDNN >= 7.0 for CUDA 10.0 https://developer.nvidia.com/rdp/cudnn-archive (on Linux copy cudnn.h,libcudnn.so... as desribed here https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html#installlinux-tar , on Windows copy cudnn.h,cudnn64_7.dll, cudnn64_7.lib as desribed here https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html#installwindows )
- GPU with CC >= 3.0: https://en.wikipedia.org/wiki/CUDA#GPUs_supported
on Linux GCC or Clang, on Windows MSVC 2015/2017/2019 https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community

# Dependencies installation

- go to setup-script folder , run the command :sh brite-main-install.sh
##  What is included ? :
- cmake-install.sh :install cmake
- cuda-10-cudnn-7-install: installs cuda 10 and cudnn7.0
- opencv-install.sh : install opencv 3.4.1
- anacaonda-install.sh:installs anaconda
- xampp-install.sh : installs xampp ( sql local server)


##  what next ? :
- now you have all the dependencies for the darknet framework to function properly, continue with 
the installation of darknet

#  How to install darknet:

- clone the project from : https://sc01-trt.thales-systems.ca/gitlab/BRiTE/darknet.git
- install on linux by using command : make install  ( this will install the darknet.so to the following location :/usr/local/lib/darknet/libdarknet.so)

Darknet framework is now installed and ready to use. 
on your python file make sure to indicate the right location for the darknet.so file : lib = CDLL("/usr/local/lib/darknet/libdarknet.so", RTLD_GLOBAL)
