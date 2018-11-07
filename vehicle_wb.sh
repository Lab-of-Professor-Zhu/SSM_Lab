#!/bin/bash
ssh -tt computer@10.3.45.68 << remotessh
source activate python3.6
cd /home/computer/LabWebsite/car_detection_yolov3/test  && python test_images_wb.py params.py
cd /home/computer/LabWebsite/car_classifiction_resnet_wb/  && python image_predict.py
exit
remotessh
echo "finish!"