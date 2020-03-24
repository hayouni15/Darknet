echo '1/3 : install cmake '
sh cmake-install.sh
echo '2/3 : install cuda 10 and cudnn 7.0'
sh cuda-10-cudnn-7-install.sh
echo '3/3 : install opencv 3.4.1'
sh opencv-install.sh
echo 'cleaning'
sh cleaning.sh

echo 'done!!!'

