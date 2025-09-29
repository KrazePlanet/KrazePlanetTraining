# Day9 - How to find Self-Hosted Programs Using Google dorking (hidden tricks):
[![Day9 - How to find Self-Hosted Programs Using Google dorking (hidden tricks):](https://img.youtube.com/vi/KPHZ7p4Snag/maxresdefault.jpg)](https://youtu.be/KPHZ7p4Snag)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/KPHZ7p4Snag?t=0)
- [`00:02:41 — How to find Self-Hosted Programs Using Google dorking`](https://youtu.be/KPHZ7p4Snag?t=161)
- [`02:24:18 — Create custom nuclei templates`](https://youtu.be/KPHZ7p4Snag?t=8658)
- [`03:37:56 — Create custom GarudRecon workflows`](https://youtu.be/KPHZ7p4Snag?t=13076)

## Resources
- https://github.com/rix4uni/custom-nuclei-templates
- https://github.com/KrazePlanet/KrazePlanetTraining/blob/main/Day9/bugbounty-programs.yaml

EXCLUDE:
```
-hackerone -bugcrowd -intigriti -yeswehack -hackenproof -openbugbounty
```

## Top 50 TLDs by Popularity
| Rank | TLD | Percentage of Domains | Count |
|------|-----|----------------------|--------|
| 1 | .com | 49.80% | 3,070,958 |
| 2 | .net | 5.60% | 345,294 |
| 3 | .ru | 4.73% | 291,622 |
| 4 | .org | 4.63% | 285,630 |
| 5 | .info | 2.80% | 172,434 |
| 6 | .in | 1.71% | 105,492 |
| 7 | .ir | 1.66% | 102,094 |
| 8 | .uk | 1.48% | 91,229 |
| 9 | .au | 1.37% | 84,428 |
| 10 | .de | 1.14% | 70,300 |
| 11 | .ua | 1.00% | 61,970 |
| 12 | .ca | 0.89% | 55,035 |
| 13 | .tr | 0.88% | 54,114 |
| 14 | .co | 0.84% | 51,686 |
| 15 | .jp | 0.72% | 44,613 |
| 16 | .vn | 0.67% | 41,100 |
| 17 | .cn | 0.65% | 40,267 |
| 18 | .gr | 0.65% | 39,898 |
| 19 | .fr | 0.59% | 36,466 |
| 20 | .tk | 0.57% | 34,981 |
| 21 | .tw | 0.50% | 30,669 |
| 22 | .id | 0.49% | 30,139 |
| 23 | .br | 0.47% | 29,063 |
| 24 | .io | 0.47% | 28,736 |
| 25 | .xyz | 0.45% | 27,547 |
| 26 | .it | 0.44% | 27,054 |
| 27 | .nl | 0.42% | 26,013 |
| 28 | .pl | 0.37% | 23,100 |
| 29 | .za | 0.37% | 22,625 |
| 30 | .us | 0.36% | 22,182 |
| 31 | .eu | 0.35% | 21,748 |
| 32 | .mx | 0.35% | 21,307 |
| 33 | .ch | 0.30% | 18,206 |
| 34 | .biz | 0.29% | 18,020 |
| 35 | .me | 0.29% | 17,968 |
| 36 | .il | 0.29% | 17,696 |
| 37 | .es | 0.28% | 17,073 |
| 38 | .online | 0.28% | 17,062 |
| 39 | .by | 0.27% | 16,467 |
| 40 | .xn--p1ai | 0.26% | 16,090 |
| 41 | .nz | 0.25% | 15,561 |
| 42 | .kr | 0.25% | 15,401 |
| 43 | .cz | 0.20% | 12,459 |
| 44 | .ro | 0.20% | 12,261 |
| 45 | .cf | 0.20% | 12,212 |
| 46 | .ar | 0.19% | 11,978 |
| 47 | .club | 0.19% | 11,861 |
| 48 | .my | 0.18% | 11,394 |
| 49 | .tv | 0.18% | 11,360 |
| 50 | .kz | 0.18% | 11,109 |

Dorks:
```yaml
intitle:"Bug Bounty Program"
intitle:"Security Reward Program"
intitle:"Responsible Disclosure Policy"
intitle:"Bug Bounty Program Policy"
intitle:"Security Bounty"
intitle:"Vulnerability Disclosure Policy"
intitle:"Report Vulnerability"
intitle:"Submit Vulnerability Report"
intitle:"Report a vulnerability"
intitle:"Security Disclosure Policy"
intitle:"Responsible Disclosure"
intitle:"Responsible Security Disclosure Policy"
intitle:"Disclosure Policy" "bounty | reward | USD | EUR"
intitle:"Security Bounty Program"
intitle:"Report a Security Bug"

inurl /bug bounty
inurl : / security
inurl:security.txt
inurl:security "reward"
inurl : /responsible disclosure
inurl : /responsible-disclosure/ reward
inurl : / responsible-disclosure/ swag
inurl : / responsible-disclosure/ bounty
inurl:'/responsible disclosure' hoodie
responsible disclosure swag r=h:com
responsible disclosure hall of fame
inurl:responsible disclosure $50
responsible disclosure europe
responsible disclosure white hat
white hat program
insite:"responsible disclosure" -inurl:nl
intext responsible disclosure
site eu responsible disclosure
site .nl responsible disclosure
site responsible disclosure
responsible disclosure:sites
responsible disclosure r=h:nl
responsible disclosure r=h:uk
responsible disclosure r=h:eu
responsible disclosure bounty r=h:nl
responsible disclosure bounty r=h:uk
responsible disclosure bounty r=h:eu
responsible disclosure swag r=h:nl
responsible disclosure swag r=h:uk
responsible disclosure swag r=h:eu
responsible disclosure reward r=h:nl
responsible disclosure reward r=h:uk
responsible disclosure reward r=h:eu
powered by bugcrowd -site:bugcrowd.com
submit vulnerability report
submit vulnerability report | "powered by bugcrowd" | "powered by hackerone"
site:*.gov.* "responsible disclosure"
intext:"we take security very seriously"
site:responsibledisclosure.com
inurl:'vulnerability-disclosure-policy' reward
intext:Vulnerability Disclosure site:nl
intext:Vulnerability Disclosure site:eu
site:*.*.nl intext:security report reward
site:*.*.nl intext:responsible disclosure reward
security vulnerability "report"
inurl"security report"
responsible disclosure university
inurl:/responsible-disclosure/ university
buy bitcoins "bug bounty"
inurl:/security ext:txt "contact"
powered by synack
intext:"/vulnerability-rating-taxonomy" -site:bugcrowd.com
intext:"Powered by Bugcrowd" -site:bugcrowd.com
```

Email Template:
```yaml
Subject: Clarification on Teamup Bug Bounty Program Status

Hi Teamup Security / Support Team,

I hope this message finds you well.

I’m interested in contributing to your Bug Bounty Program. Before proceeding with any security research or testing, I wanted to confirm whether the program is currently *active* and whether there have been any recent changes in the scope, rules, or exclusions since the last update on April 4, 2024 (from your website).

Could you please confirm:

1. That the Bug Bounty Program is still running.
2. If there have been any updates to the guidelines, scope, or contact process since the April 2024 page.
3. Whether there are any parts of your service or domains that are explicitly excluded (beyond what is listed) that researchers should avoid.

Thank you for maintaining the security of Teamup, and I appreciate your guidance before I begin.

Best regards,
[Your Name / Handle]
[Optional: Your affiliation / researcher profile]

```
