# Day50 — Local File Inclusion: From Basics to Fully Automated Attacks:
<img width="960" height="540" alt="2025-12-09 02_02_49-Media Player" src="https://github.com/user-attachments/assets/9124f9ac-3f74-496f-8a0b-6d35b8c698d0" />

[![Day50 — Local File Inclusion: From Basics to Fully Automated Attacks:](https://img.youtube.com/vi/TvmmrOIS0BM/maxresdefault.jpg)](https://youtu.be/TvmmrOIS0BM)

## Resources
```yaml
echo "testphp.vulnweb.com" | waybackurls | lfifinder --silent | unew lfifinder.output

echo "vulnweb.com" | subfinder -duc -silent -all | katana -duc -silent | lfifinder --silent | unew lfifinder.output
```

```yaml
curl -s "https://raw.githubusercontent.com/rix4uni/targets-filter/refs/heads/main/chaos-website-targets.json" | jq -r '.[].URL'
```

- https://cvedb.shodan.io

Tools used:
- https://github.com/rix4uni/lfifinder
