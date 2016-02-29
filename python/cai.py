default_encoding = 'utf-8'
import os
import os.path
from PIL import Image

im = Image.open('cat.jpg')
img_size = im.size

print img_size

width,hight = img_size
if width > hight:
    new_width = int(float(hight)*3.0/4.0)
    crop_width = int(float((width - new_width))/2.0)
    box =(crop_width, 0, im.size[0] - crop_width, im.size[1])
    im1 = im.crop(box)
    im1.save('cai.jpg','jpeg')

elif hight > width:
    new_hight = int(float(width)*3.0/4.0)
    crop_hight = int(float(hight - new_hight)/2.0)
    box =(0, crop_hight, im.size[0], im.size[1] -crop_hight)
    im1 = im.crop(box)
    im1.save('cai.jpg', 'jpeg')




#box =(200,100,im.size[0],im.size[1]-120)
#
#im1=im.crop(box)
#
#im1.save('cai.jpg','jpeg')
