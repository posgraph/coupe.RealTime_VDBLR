#!/bin/bash

py3clean ./

CUDA_VISIBLE_DEVICES=0 python run.py \
    --config config_MTU2 \
    --mode MTU2_amp_DVD \
    --network MTU \
    --trainer trainer_multi_opt_amp \
    --data DVD \
    --ckpt_abs_name ckpt/MTU2_amp_DVD.pytorch \
    --eval_mode eval \
    --is_quan \
    --is_qual

