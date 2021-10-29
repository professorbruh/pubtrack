from urllib.request import Request, urlopen
from bs4 import BeautifulSoup as soup
req = Request('https://www.allconferencealert.com/', headers={'User-Agent': 'Mozilla/5.0'})
page_html= urlopen(req).read()



parsed_page = soup(page_html,"html.parser")

container = parsed_page.find("div",class_="similar-events-list")

k = container.find_all("li")
fin = []
for i in k:
    fin.append(i.text.split(","))
print(fin)
