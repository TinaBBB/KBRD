#!/usr/bin/env bash
module load python/3.6
source ~/KBRD/bin/activate

cd /home/tinashen/projects/def-ssanner/tinashen/KBRD

let num_runs=$1

for i in $(seq 0 $((num_runs-1)));
do
      python parlai/tasks/redial/train_transformer_rec.py -mf saved/transformer_rec_both_rgcn_$i
done

