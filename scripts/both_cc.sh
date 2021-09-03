#!/usr/bin/env bash
module load python/3.7
source ~/vae_uncertainty/bin/activate

let num_runs=$1
let gpu_id=$2

for i in $(seq 0 $((num_runs-1)));
do
    CUDA_VISIBLE_DEVICES=$gpu_id python parlai/tasks/redial/train_kbrd.py -mf saved/both_rgcn_$i
done

