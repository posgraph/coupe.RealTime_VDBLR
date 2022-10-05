#!/bin/bash

py3clean ./

CUDA_VISIBLE_DEVICES=0 python run.py \
    --config config_MTU10 \
    --mode MTU10_DVD \
    --network MTU \
    --trainer trainer_multi_opt \
    --data DVD \
    --ckpt_abs_name ckpt/MTU10_DVD.pytorch \
    --eval_mode eval \
    --is_quan \
    --is_qual
