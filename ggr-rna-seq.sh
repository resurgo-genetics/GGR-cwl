#!/bin/bash
#
#SBATCH --job-name=GGR_RNA-seq
#SBATCH --output=ggr-rna-seq.out
#SBATCH --mail-user=dan.leehr@duke.edu
#SBATCH --mail-type=FAIL

source ~/env-cwl/bin/activate
export PATH="/data/reddylab/software/FastQC:/home/dcl9/bin:/usr/local/bin:$PATH"
srun cwltool --debug --preserve-environment PATH --outdir ~/ggr-cwl-data --no-container ~/ggr-cwl/ggr-rna-seq.cwl ~/ggr-cwl/rna-seq-hardac.json
