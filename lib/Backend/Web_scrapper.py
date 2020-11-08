
def googleSearch(ingr):
    g_clean = []
    url = 'https://www.google.com/search?client=ubuntu&channel=fs&q={}&ie=utf-8&oe=utf-8'.format(ingr)
    try:
        html = requests.get(url)
        if html.status_code==200:
            soup = BeautifulSoup(html.text, 'lxml')
            a = soup.find_all('a')
            for i in a:
                k = i.get('href')
                try:
                    m = re.search("(?P<url>https?://[^\s]+)", k)
                    n = m.group(0)
                    rul = n.split('&')[0]
                    domain = urlparse(rul)
                    if(re.search('google.com', domain.netloc)):
                        continue
                    else:
                        g_clean.append(rul)
                except:
                    continue
    except Exception as ex:
        print(str(ex))
    finally:
        return g_clean

def analyse_sentiments(s_line):
    analyser = SentimentIntensityAnalyzer()

    vs = analyser.polarity_scores(s_line)

    if vs['compound'] >= 0.1:
        return vs['compound']
    elif vs['compound'] <= -0.1:
        return vs['compound']
    else:
        return vs['compound']

def safe_or_not(s):
    if s >= 2.8:
        return 'healthy'
    elif s <= 1.8:
        return 'potentially harmful'
    else:
        return 'neutral'

def avg(lst, n):
    return sum(lst)/n

def scrapper(url):
    article = Article(url)

    article.download()
    article.parse()
    return article.text

start = time.time()

lst_of_ingredients = ['parabens', 'sulfates', 'phthalates', 'fragarance', 'formaldehyde', 'phenoxyethanol', 'methanol', 'polyethylene glycols']
health1 = []

for i in lst_of_ingredients:
    search = 'disadvantages of {} for skin'.format(i)
    l = googleSearch(search)
    l = l[:6]

    score = []
    for url in l:
        try:
            score.append(analyse_sentiments(scrapper(url)))
        except:
            pass
    s = avg(score, len(lst_of_ingredients)/3)
    health1.append(s)

health2 = []

for i in lst_of_ingredients:
    search = 'advantages of {} for skin'.format(i)
    l = googleSearch(search)
    l = l[:6]

    score = []
    for url in l:
        try:
            score.append(analyse_sentiments(summarize(scrapper(url), ratio=0.7)))
        except:
            pass
    s = avg(score, len(lst_of_ingredients)/3)
    health2.append(s)

end = time.time()

print(end - start)

for i in range(len(lst_of_ingredients)):
    a = health1[i] + health2[i]
    print(lst_of_ingredients[i], safe_or_not(a), 'Confidence :', a)

for i in range(len(lst_of_ingredients)):
    print(lst_of_ingredients[i], '-', health1[i], health2[i])

# Quick Summary


for c in lst_of_ingredients:
    search = "is {} safe for hair".format(c)

    url = f"https://www.google.com/search?&q={search}"

    req = requests.get(url)
    print(req)

    sor = BeautifulSoup(req.text, "html.parser")
    s = sor.find("div", class_='BNeawe').text

    print(c, '-',s)