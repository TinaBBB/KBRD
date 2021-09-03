#!/usr/bin/env bash
module load python/3.6
source ~/KBRD/bin/activate

cd /home/tinashen/projects/def-ssanner/tinashen/KBRD

let num_runs=$1

for i in $(seq 0 $((num_runs-1)));
do
  python parlai/tasks/redial/train_autorec.py -mf saved/release_baseline_$i
done
