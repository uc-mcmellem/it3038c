from PIL import Image
from PIL import ImageEnhance

#Asks the user for the full file path of the image they are trying to mess with 
filePath = input("Please enter the full path to your image including the extension: ")
#Opens the image
im = Image.open(filePath)
#Resizes it to 128 by 128 pixels
out = im.resize((128,128))
#Rotates it 90 degrees
out = im.rotate(90)
#decreases brightness 
editedImage = ImageEnhance.Brightness(out)
editedImage.enhance(.7).show("30% less brightness")

