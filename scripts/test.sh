#!/bin/bash

run() {
	arguments="--arch $arch --depth $depth --pre-layer $pre_layer --normalization-transform $nor_option \
		--epochs 200 --schedule 100 150 --gamma 0.1 \
		--dataset $dataset \
		--checkpoint test-$dataset-$arch$depth-pre_layer-$pre_layer-norm_trans-$nor_option \
		--gpu-id $gpu_id"

	echo $arguments

	python3 cifar.py $arguments
	
#	--arch $arch --depth $depth --pre-layer $pre_layer --normalization-transform $nor_option \
#		--epochs 200 --schedule 100 150 --gamma 0.1 \
#		--dataset $dataset \
#		--checkpoint test-$dataset-$arch$depth-pre_layer-$pre_layer-norm_trans-$nor_option \
#		--gpu-id $gpu_id
}

gpu_id="3"
nor_option="True"
pre_layer="affine"

arch="resnet"
depth="20"
dataset="cifar10"
run
