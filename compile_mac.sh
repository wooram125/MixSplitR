#!/bin/bash
# Mac Compilation Script for MixSplitacr
# Make sure you have ffmpeg and ffprobe in the same directory

python3 -m PyInstaller --onefile \
--icon="icon.icns" \
--add-binary "ffmpeg:." \
--add-binary "ffprobe:." \
--collect-submodules acrcloud \
--hidden-import mutagen.flac \
--hidden-import requests \
MixSplitacr.py

echo ""
echo "Compilation complete! Check the 'dist' folder for your executable."
