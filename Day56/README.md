# Day56 — Live Recon on IIS Windows Server - Part-4:
[![Day56 — Live Recon on IIS Windows Server - Part-4:](https://img.youtube.com/vi/KFN8_wzslRs/maxresdefault.jpg)](https://youtu.be/KFN8_wzslRs)

## Resources
```yaml
register.html

register.html
registor.html
registerr.html

REGIST


echo "https://iil.accsofterp.com" | shortscan
cat urls.txt | shortscan
subfinder | httpx -duc -silent -title -td -server | grep -aE "IIS|IIS Windows Server|Microsoft-IIS|Windows Server" | awk '{print $1}' | shortscan

chaos | httpx -duc -silent -title -td -server | grep -aE "IIS|IIS Windows Server|Microsoft-IIS|Windows Server" | awk '{print $1}'| shortscan
```

- https://github.com/rix4uni/shortscan
- https://github.com/rix4uni/WordList/releases/tag/iis-shortnameguesser-wordlist.txt
