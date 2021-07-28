# linux-mint-nemo-webp-converter-actions
Basic 'JPG/PNG/TIFF to WEBP' Nemo Actions for on-the-fly conversions

Includes 4 actions for Linux Mint's Nemo:

***Three converters from JPG/PNG/TIFF to WEBP***, set at 70% quality, 90% quality and 100% quality (lossless).

The quality is easily tweaked by changing the quality settings in the files. No knowledge of bash needed.

*I only recommend installing the first two as lossless conversion to WEBP only makes sense for very few users as the files are larger and the WEBP format is less resilient to data corruption on hard drives.*

***One converter from WEBP to PNG.***

# Prerequesites

These Nemo Actions use `cwebp` as a WebP encoder and `dwebp` as a WebP decoder. On Linux Mint, install them through the command `# aptitude install webp`.

# How to install

After installing `cwebp` and `dwebp` through the command `# aptitude install webp`, simply copy the files you want to `~/.local/share/nemo/actions` (user) and/or `/usr/share/nemo/actions` (system-wide), then make the shell scripts executable.

Here's the full run if you're lazy (excluding the lossless converter):
`
mkdir ~/Downloads/linux-mint-nemo-webp-converter-actions
cd ~/Downloads/linux-mint-nemo-webp-converter-actions

sudo aptitude install webp

cp 2webp70.nemo_action ~/.local/share/nemo/actions
cp 2webp70.sh ~/.local/share/nemo/actions
cp 2webp90.nemo_action ~/.local/share/nemo/actions
cp 2webp90.sh ~/.local/share/nemo/actions
cp webp2png.nemo_action ~/.local/share/nemo/actions
cp webp2png.sh ~/.local/share/nemo/actions

chmod +x ~/.local/share/nemo/actions/2webp70.sh
chmod +x ~/.local/share/nemo/actions/2webp90.sh
chmod +x ~/.local/share/nemo/actions/webp2png.sh
`
