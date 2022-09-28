#!/bin/bash --login
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100GB
#SBATCH --job-name fastqc-run
#SBATCH --output=%x-%j.SLURMout

#set working directory
cd $/mnt/ufs18/home-211/hawki345/

#add conda to path
export PATH="${HOME}/miniconda3/envs/plb812/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/miniconda3/envs/plb812/lib:${LD_LIBRARY_PATH}"

#fastqc printout to new directory
mkdir /mnt/ufs18/home-211/hawki345/SRRSorghumQCs 
fastqc –f fastq –o /mnt/ufs18/home-211/hawki345/SRRSorghumQCs /mnt/ufs18/home-211/hawki345/SRR3452717.fastq /mnt/ufs18/home-211/hawki345/SRR3452718.fastq /mnt/ufs18/home-211/hawki345/SRR3452719.fastq /mnt/ufs18/home-211/hawki345/SRR3452720.fastq /mnt/ufs18/home-211/hawki345/SRR3452721.fastq /mnt/ufs18/home-211/hawki345/SRR3452722.fastq /mnt/ufs18/home-211/hawki345/SRR3452723.fastq /mnt/ufs18/home-211/hawki345/SRR3452724.fastq /mnt/ufs18/home-211/hawki345/SRR3452725.fastq /mnt/ufs18/home-211/hawki345/SRR3452726.fastq /mnt/ufs18/home-211/hawki345/SRR3452727.fastq /mnt/ufs18/home-211/hawki345/SRR3452728.fastq

