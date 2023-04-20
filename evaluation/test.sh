#!/bin/bash
#
# Example run file for testing on wiki 
for seed in 42 437 4088 3092 9720
do
    python run_qa.py \
    --model_name_or_path ltgoslo/norbert2 \
    --model_type bert \
    --train_file PATH_TO_TRAIN \
    --predict_file PATH_TO_VAL_OR_TEST \
    --do_train \
    --do_eval \
    --domain wiki \
    --output_dir ./test_dir_wiki \
    --save_steps 5000 \
    --overwrite_output_dir \
    --learning_rate 5e-5 \
    --per_gpu_train_batch_size 16 \
    --seed $seed
done
