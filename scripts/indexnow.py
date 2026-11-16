"""Invia a IndexNow (Bing, Yandex, Seznam, Naver...) gli indirizzi della sitemap pubblicata.

Uso, dalla cartella del repository, dopo che il sito è online:

    python -I scripts/indexnow.py            # tutti gli indirizzi della sitemap
    python -I scripts/indexnow.py URL ...    # solo gli indirizzi indicati

La chiave non è un segreto: IndexNow la verifica leggendo il file pubblico
https://escursionilucabigoni.it/<chiave>.txt (in Escursioni.Web/wwwroot).
Google non usa IndexNow: per Google si reinvia la sitemap da Search Console.
"""
import json
import re
import sys
import urllib.request

HOST = "escursionilucabigoni.it"
KEY = "53e0c39ac58989f4076c904225524d49"
ENDPOINT = "https://api.indexnow.org/indexnow"
UA = "escursioni-indexnow/1.0"


def get(url):
    req = urllib.request.Request(url, headers={"User-Agent": UA})
    with urllib.request.urlopen(req, timeout=60) as r:
        return r.read().decode("utf-8")


def main():
    urls = sys.argv[1:]
    if not urls:
        urls = re.findall(r"<loc>([^<]+)</loc>", get(f"https://{HOST}/sitemap.xml"))
    urls = [u for u in urls if u.startswith(f"https://{HOST}/")]
    if not urls:
        sys.exit("nessun indirizzo da inviare")

    # Il file della chiave deve essere online, altrimenti IndexNow rifiuta l'invio
    if get(f"https://{HOST}/{KEY}.txt").strip() != KEY:
        sys.exit("il file della chiave non è online o non corrisponde")

    # IndexNow accetta al massimo 10.000 indirizzi per richiesta
    for i in range(0, len(urls), 10000):
        body = json.dumps({
            "host": HOST,
            "key": KEY,
            "keyLocation": f"https://{HOST}/{KEY}.txt",
            "urlList": urls[i:i + 10000],
        }).encode("utf-8")
        req = urllib.request.Request(ENDPOINT, data=body, method="POST", headers={
            "Content-Type": "application/json; charset=utf-8",
            "User-Agent": UA,
        })
        with urllib.request.urlopen(req, timeout=60) as r:
            print(f"inviati {len(urls[i:i + 10000])} indirizzi: HTTP {r.status}")


if __name__ == "__main__":
    main()
