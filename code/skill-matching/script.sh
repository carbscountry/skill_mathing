#!/bin/bash

# make kaggle directory and copy kaggle.json file to it
mkdir -p ~/.kaggle 
cp /workspace/kaggle.json ~/.kaggle 
chmod 600 ~/.kaggle/kaggle.json 

# load JDs
kaggle datasets download -d airiddha/trainrev1 -p /workspace/data/input 
unzip -j /workspace/data/input/trainrev1.zip -d /workspace/data/input/ 

# load DataEngineer.csv
kaggle datasets download -d andrewmvd/data-engineer-jobs -p /workspace/data/input 
unzip -j /workspace/data/input/data-engineer-jobs.zip -d /workspace/data/input/ 

# load resume_corpus
git clone https://github.com/florex/resume_corpus /workspace/data/input/resume_corpus 
find /workspace/data/input/resume_corpus/ -type f ! -name 'resumes_corpus.zip' -delete 
unzip -j /workspace/data/input/resume_corpus/resumes_corpus.zip -d /workspace/data/input/resume_corpus 



