from PIL import Image
from PIL import ImageEnhance

#Asks the user for the full file path of the image they are trying to mess with 
filePath = input("Please enter the full path to your image including the extension: ")

im = Image.open(filePath)

out = im.resize((128,128))

out = im.rotate(90)

editedImage = ImageEnhance.Brightness(out)
editedImage.enhance(.7).show("30% less brightness")

