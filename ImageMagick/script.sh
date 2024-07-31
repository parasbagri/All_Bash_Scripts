#!/bin/bash

#convert the extenstion
magick image1.jpeg output1.png

#Crop Image
magick image2.jpg -crop 300x300+50+50 output2.jpg

#Rotate Image
magick image1.jpeg -rotate 90 output3.jpg

#Add Border
magick image1.jpeg -bordercolor black -border 10x10 output4.jpg

#Add Text Watermark
magick image1.jpeg -gravity southeast -pointsize 36 -draw "text 10,10 'Watermark'" output5.jpg

#Apply Gaussian Blur
magick image1.jpeg -blur 0x8 output6.jpg

#Risize Image
magick image1.jpeg -resize 800x600 output7.jpg

#Change Image Brightness
magick image1.jpeg -brightness-contrast 20x0 output8.jpg

#Change Image Contrast
magick image1.jpeg -brightness-contrast 0x20 output9.jpg

#Flip Image Vertically
magick image1.jpeg -flip output10.jpg

#Mirror Image Horizontally
magick image1.jpeg -flop output11.jpg

#Convert Image to Grayscale
magick image1.jpeg -colorspace Gray output12.jpg

#Reduce Image Quality
magick image1.jpeg -quality 75 output13.jpg

#Combine Multiple Images into a Montage
magick montage image1.jpeg image2.jpg -tile 3x1 -geometry +10+10 output14.jpg

#Composite Two Images
magick composite -gravity center image1.jpeg image2.jpg output16_composite.jpg

# Invert Colors
magick image1.jpeg -negate output17_inverted.jpg

#Posterize Image
magick image1.jpeg -posterize 4 output18_posterized.jpg

#Swirl Effect
magick image1.jpeg -swirl 180 output19_swirl.jpg

#Charcoal Sketch Effect
magick image1.jpeg -charcoal 2 output20_charcoal.jpg








echo "Thanks For Exicuted this , The Image manipulations complete!"




