#!/bin/bash --login
#SBATCH --time=12:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100GB
#SBATCH --job-name trimscript
#SBATCH --output=%x-%j.SLURMout

#Change to current working directory
cd ${PBS_O_WORKDIR}

#Add conda environment to the path
export PATH="${HOME}/miniconda3/envs/plb812/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/miniconda3/envs/plb812/lib:${LD_LIBRARY_PATH}"

trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452717.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452717trim1.fastq" TRAILING:29 MINLEN:90 
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452718.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452718trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452719.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452719trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452720.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452720trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452721.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452721trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452722.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452722trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452723.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452723trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452724.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452724trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452725.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452725trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452726.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452726trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452727.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452727trim1.fastq" TRAILING:29 MINLEN:90
trimmomatic SE -phred33 "/mnt/ufs18/home-211/hawki345/SRR3452728.fastq" "/mnt/ufs18/home-211/hawki345/SRR3452728trim1.fastq" TRAILING:29 MINLEN:90
fastqc -f fastq /mnt/ufs18/home-211/hawki345/SRR3452717trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452718trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452719trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452720trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452721trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452722trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452723trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452724trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452725trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452726trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452727trim1.fastq /mnt/ufs18/home-211/hawki345/SRR3452728trim1.fastq
