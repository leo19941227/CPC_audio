import os
import argparse
from librosa.util import find_files

parser = argparse.ArgumentParser()
parser.add_argument('--root_dir', help='The root directory of audio files')
parser.add_argument('--output_text', help='The output path of all the found audio files')
args = parser.parse_args()

audio_files = find_files(args.root_dir)
audio_files = [os.path.basename(audio).split('.')[0] for audio in audio_files]
audio_files = [f'{audio}\n' for audio in audio_files]
with open(args.output_text, 'w') as file:
    file.writelines(audio_files)

