#!/bin/bash

#SBATCH -t 1-00:00                         # Runtime of 1 day, in D-HH:MM format
#SBATCH --qos=medium                       # QoS policy
#SBATCH -c 4                               # allocate 4 cpus on the same host
#SBATCH --mem=16G                          # allocate 4 GB memory total
#SBATCH -o boylanb.out                     # File to which STDOUT + STDERR will be written, including job ID in filename
#SBATCH --mail-type=ALL                    # ALL email notification type
#SBATCH --mail-user=boylanb@gene.com       # Email to which notifications will be sent


ml OpenSlide/3.4.1-foss-2017a openslide-python
ml Oracle_InstantClient/12.2.0.1.0
ml Python/3.6.3

pip install --upgrade oauth2client --user
pip install gspread --user
pip install PyOpenSSL --user
pip install pygsheets --user
pip install cx_Oracle --user

srun python ___.py