#!/usr/bin/env bash

# Running the baseline models
#sbatch --nodes=1 --time=96:00:00 --mem=32G --cpus-per-task=4 --gres=gpu:1 --account=rrg-ssanner baseline.sh 1 0

# Training the recommender part
sbatch --nodes=1 --time=96:00:00 --mem=32G --cpus-per-task=4 --gres=gpu:1 --account=rrg-ssanner both.sh 1 0

# Training the dialog part
#sbatch --nodes=1 --time=96:00:00 --mem=32G --cpus-per-task=4 --gres=gpu:1 --account=rrg-ssanner t2t_rec_rgcn.sh 1 0