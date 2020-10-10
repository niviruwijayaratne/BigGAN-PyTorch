#!/bin/bash
python ../../calculate_inception_moments.py --dataset C10 --num_workers 1 --data_root /home/niviru/Vision/BigGAN-PyTorch/kinetics_finetune/data \
--batch_size 50 --shuffle
