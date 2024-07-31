# Download the ImageMagick tarball
wget https://www.imagemagick.org/download/ImageMagick.tar.gz

# Extract the tarball
tar xvzf ImageMagick.tar.gz

# Change to the extracted directory (adjust version number if necessary)
cd ImageMagick-7.1.1-8

# Configure, compile, and install
./configure
make
sudo make install

# Update the library cache
sudo ldconfig /usr/local/lib

# Verify the installation
magick -version
