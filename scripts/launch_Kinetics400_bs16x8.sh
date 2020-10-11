#!/bin/bash
python train.py \
--experiment_name Kinetics-BigGAN-Finetune_loader_test \
--data_root "/home/shared/cs_vision" \
--dataset Kinetics400 --parallel --shuffle  --num_workers 8 --batch_size 32 --load_in_mem  \
--pbar "tqdm" \
--num_G_accumulations 8 --num_D_accumulations 8 \
--num_D_steps 1 --G_lr 5e-4 --D_lr 1e-4 --D_B2 0.999 --G_B2 0.999 \
--G_attn 64 --D_attn 64 \
--G_nl inplace_relu --D_nl inplace_relu \
--SN_eps 1e-6 --BN_eps 1e-5 --adam_eps 1e-6 \
--G_ortho 0.0 \
--G_shared \
--G_init ortho --D_init ortho \
--hier --dim_z 120 --shared_dim 128 \
--G_eval_mode \
--G_ch 96 --D_ch 96 \
--ema --use_ema --ema_start 20000 \
--test_every 2000 --base_root kinetics_finetune --save_every 1000 --num_best_copies 5 --num_save_copies 2 --seed 0 \