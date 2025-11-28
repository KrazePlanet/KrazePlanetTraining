# Day43 — How to Find Blind Time Based SQLI (Part 2):
[![Day43 — How to Find Blind Time Based SQLI (Part 2)](https://img.youtube.com/vi/U9ICiDnuE0o/maxresdefault.jpg)](https://youtu.be/U9ICiDnuE0o)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/U9ICiDnuE0o?t=0)
- [`00:00:04 — Google Dorking`](https://youtu.be/U9ICiDnuE0o?t=4)
- [`00:16:57 — SQLI Automation`](https://youtu.be/U9ICiDnuE0o?t=1017)
- [`02:13:01 — New Way to Find SelfHosted Programs`](https://youtu.be/U9ICiDnuE0o?t=7981)

## Resources
```yaml
cat tmp.txt | urldedupe -s | unew | pvreplace -silent -payload "*" | grep "*" | unew -shuf urls.txt

gosqli -l urls.txt -p fav-time-based-sqli.txt --output --on-confirmed ghauri

Find Hidden parameter with `.php, asp, .aspx, .jsp, .jsp, .xml`
```

- https://dorks.krazeplanet.com
- https://programs.krazeplanet.com

```yaml
wget https://github.com/rix4uni/top-1m-domains/raw/refs/heads/master/alldomains.txt.gz
gunzip alldomains.txt.gz

cat alldomains.txt | tldinfo --silent --extract domain,suffix | unew | unew -divide 100 chunk/chunk_

cat chunk/chunk_48 | stoppiracy --silent --wordlist "Eligible Targets,reward,bounty,monetary,compensation,we offer a monetary,We offer reward,monetary reward,eligible for a reward,we award a bounty,We offer monetary rewards"
```

Tools used:
- https://github.com/ameenmaali/urldedupe
- https://github.com/rix4uni/unew
- https://github.com/rix4uni/pvreplace
- https://github.com/rix4uni/gosqli
- https://github.com/rix4uni/paramfinder
- https://github.com/rix4uni/msarjun
- https://github.com/rix4uni/stoppiracy
- https://github.com/Sh1Yo/x8
