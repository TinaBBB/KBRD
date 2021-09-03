#!/usr/bin/env bash
module load python/3.7
source ~/KBRD/bin/activate

cd /home/tinashen/projects/def-ssanner/tinashen/KBRD

let num_runs=$1
let gpu_id=$2

for i in $(seq 0 $((num_runs-1)));
do
    CUDA_VISIBLE_DEVICES=$gpu_id python parlai/tasks/redial/train_transformer_rec.py -mf saved/transformer_rec_both_rgcn_$i
done

