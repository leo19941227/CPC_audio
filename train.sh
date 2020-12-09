#!/bin/bash

PATH_AUDIO_FILES=/share/corpus_tar/LibriSpeech/
TRAINING_SET=./libri_train_360.txt
VAL_SET=./libri_dev.txt
EXTENSION=flac

# for development (only use a small training subset)
python cpc/train.py --pathDB $PATH_AUDIO_FILES --pathTrain $TRAINING_SET --pathVal $VAL_SET --file_extension $EXTENSION --debug

# for actual pre-training
# python cpc/train.py --pathDB $PATH_AUDIO_FILES --pathTrain $TRAINING_SET --pathVal $VAL_SET --file_extension $EXTENSION

