#!/bin/bash

run() {
	arguments="--arch $arch --depth $depth --pre-layer $pre_layer --normalization-transform $nor_option \
		--epochs 200 --schedule 100 150 --gamma 0.1 --no-wd-pre-layer $no_wd_pre_layer \
		--dataset $dataset \
		--checkpoint test-$dataset-$arch$depth-pre_layer-$pre_layer-no_wd_pre_layer-$no_wd_pre_layer-norm_trans-$nor_option \
		--gpu-id $gpu_id"

	echo $arguments

	python3 cifar.py $arguments
}

gpu_id="2"
nor_option="True"
pre_layer="beta"
no_wd_pre_layer="False"

arch="resnet"
depth="20"
dataset="cifar10"
run

arch="resnet"
depth="20"
dataset="cifar100"
run

arch="vgg16_bn"
depth="16"
dataset="cifar10"
run

arch="vgg16_bn"
depth="16"
dataset="cifar100"
run
