import requests, re
from bs4 import BeautifulSoup

r = requests.get("https://pool.netrition.com/cgi/product_categories_display.cgi").content
soup = BeautifulSoup(r, "lxml")

# reviews = soup.find

price = soup.findAll("div", {"class":"price"})

# for p in price:
#     a = p.findAll()
print()


# //*[@id="price_inside_buybox"]





# tags = soup.findAll("div", {"class":re.compile('(ratings)')})
# for p in tags:
#     a = p.findAll("p", {"class":"pull-right"}) 
#     print(a[0].string)