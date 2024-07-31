#!/bin/bash

# Ensure running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

# Install necessary dependencies
apt-get update
apt-get install -y build-essential wget libjpeg-dev libpng-dev libtiff-dev libwebp-dev libopenjp2-7-dev libfreetype6-dev libxml2-dev libfftw3-dev

# Download ImageMagick source
wget https://www.imagemagick.org/download/ImageMagick.tar.gz

# Extract the tarball
tar xvzf ImageMagick.tar.gz
cd ImageMagick-7.*

# Configure, compile, and install
./configure
make
make install

# Update shared library cache
ldconfig /usr/local/lib

# Verify installation
if command -v magick &> /dev/null; then
    echo "ImageMagick installed successfully!"
else
    echo "ImageMagick installation failed."
fi

# Cleanup
cd ..
rm -rf ImageMagick-7.*
rm ImageMagick.tar.gz
