# Day12 - Reflected XSS Automation:
[![Day12 - Reflected XSS Automation:](https://img.youtube.com/vi/DeWsuYi8cHE/maxresdefault.jpg)](https://youtu.be/DeWsuYi8cHE)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/DeWsuYi8cHE?t=0)
- [`00:06:53 — XSS lab solve`](https://youtu.be/DeWsuYi8cHE?t=413)
- [`00:31:00 — Automate boring XSS recon using xssrecon`](https://youtu.be/DeWsuYi8cHE?t=1860)
- [`02:39:53 — GarudRecon workflow for mass RXSS`](https://youtu.be/DeWsuYi8cHE?t=9593)


## Resources
### Step1: collect wildcards
- https://raw.githubusercontent.com/rix4uni/WordList/refs/heads/main/payloads/xss/favourite.txt
- Setup: https://ez.pe/manage/account/signup
- Replace rix4uni with your username

### Step2: collect wildcards using scope
```
curl -s "https://raw.githubusercontent.com/rix4uni/scope/refs/heads/main/data/Wildcards/inscope_wildcards.txt" | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew -q wildcards.txt
```

- or: self-hosted wildcards

### Step3: run you workflow
- https://github.com/KrazePlanet/KrazePlanetTraining/blob/main/Day12/kpt-massrxss-wayback.json
- https://github.com/KrazePlanet/KrazePlanetTraining/blob/main/Day12/kpt-massrxss-katana.json

Tools used:
- https://github.com/projectdiscovery/subfinder
- https://github.com/projectdiscovery/httpx
- https://github.com/projectdiscovery/katana
- https://github.com/ameenmaali/urldedupe
- https://github.com/rix4uni/xssrecon
- https://github.com/rix4uni/pvreplace
- https://github.com/rix4uni/xsschecker
- https://github.com/rix4uni/pyxss
- https://github.com/rix4uni/unew
