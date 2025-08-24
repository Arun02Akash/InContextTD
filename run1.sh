#!/bin/bash
#SBATCH --job-name=inContextTD
#SBATCH --output=output.txt
#SBATCH --error=error.txt
#SBATCH --time=72:00:00
#SBATCH --mem=128G
#SBATCH --nodes=1                      
#SBATCH --ntasks-per-node=32        
#SBATCH --partition=gpu
#SBATCH --gres=gpu:rtx:1

#SBATCH --mail-type=ALL              #Send email on all job events
#SBATCH --mail-user=arun_akashr@tamu.edu    #Send all emails to email_address

source /scratch/user/arun_akashr/miniconda3/etc/profile.d/conda.sh
conda activate in-context-td

python main.py --suffix=linear_standard -v