#!/bin/bash
ssh -tt computer@10.3.45.68 << remotessh
cd /home/computer/LabWebsite/car_classifiction_resnet_wb/cars_predict  && rm -f *
cd /home/computer/LabWebsite/car_detection_yolov3/test/images  && rm -f *
exit
remotessh
echo "finish!"