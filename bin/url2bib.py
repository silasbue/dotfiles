from goose3 import Goose
from sys import argv
from datetime import datetime

g = Goose()
url = argv[1]

def authors(lst):
    s = ""
    for author in lst:
        if s == "":
            s = str(author)
        else: 
            s += f" \\and {author}"
    return s

article = g.extract(url)

date = ""

if article.publish_date is not None:
    dt = datetime.fromisoformat(article.publish_date)
    date = dt.strftime("%Y-%m-%d")

print(f'''@online{{<key>,
    title = "{article.title}",
    author = "{authors(article.authors)}",
    url = "{url}",
    date = "{date}",
    urldate = "{datetime.today().strftime('%Y-%m-%d')}"
    note = "Last modified ..."
}}''')
