import json
import requests

print('Please enter your zip code:')
zip = input()

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=45120,us&appid=48930f01de083e4f09ebace806f51182' % zip)

data = r.json()

print(data['weather'][0]['description'])