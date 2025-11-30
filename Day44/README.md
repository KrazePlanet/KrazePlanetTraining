# Day44 — How to Find Blind Time Based SQLI (Part 3):
[![Day44 — How to Find Blind Time Based SQLI (Part 3)](https://img.youtube.com/vi/U6kxvbMMh-s/maxresdefault.jpg)](https://youtu.be/U6kxvbMMh-s)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/U6kxvbMMh-s?t=0)
- [`00:02:06 — Finding Hidden Parameter for SQLI`](https://youtu.be/U6kxvbMMh-s?t=126)
- [`01:19:13 — Google Dorking`](https://youtu.be/U6kxvbMMh-s?t=4753)
- [`02:03:22 — DuckDuckGo Dorking`](https://youtu.be/U6kxvbMMh-s?t=7402)
- [`02:16:17 — Get Latest cve notification with cvemapping`](https://youtu.be/U6kxvbMMh-s?t=8177)
- [`03:12:10 — Remove Unnecessary urls`](https://youtu.be/U6kxvbMMh-s?t=11530)

## Resources
- https://dorks.krazeplanet.com
- https://programs.krazeplanet.com
- https://github.com/gitrecon1455/fresh-proxy-list
- https://webshare.io/
- https://chromewebstore.google.com/detail/proxyempire-proxy-manager/pljikjgdcelenhecaainhheabilopmcc
- https://github.com/rix4uni/cvemapping
- https://github.com/rix4uni/scope

Get all Reward Wildcards
```yaml
### Step1: collect wildcards using scope
curl -s "https://raw.githubusercontent.com/rix4uni/scope/refs/heads/main/data/Wildcards/inscope_wildcards.txt" | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew -q wildcards.txt
curl -s "https://raw.githubusercontent.com/KrazePlanet/KrazePlanetPrograms/refs/heads/main/programs.json" | jq -r '.[].inscope_domains[]' | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew wildcards.txt
```

hidden-parameter.sh
```yaml
#Find Hidden parameter with `.php, asp, .aspx, .jsp, .jsp, .xml`

FILE=$1
cat $FILE | grep -aE '\.(php|jsp|jspa|asp|aspx|html)$' | egrep -av "=" | unew paramfinderlinks.txt

#paramfinder
cat paramfinderlinks.txt | paramfinder --silent --insecure -c 50 --timeout 30 | grep 'TRANSFORM_URL:' | sed 's/^TRANSFORM_URL: //' | unew hidden-urls.txt

#msarjun
cat paramfinderlinks.txt | msarjun --silent -m GET,POST,XML,JSON --json | jq -r '.transformed_url' | unew hidden-urls.txt

#x8
cat paramfinderlinks.txt | interlace -threads 10 -c "x8 -u _target_ -X GET POST XML JSON --disable-progress-bar -w ~/.config/msarjun/params.txt --output-format json --append --output _output_/_cleantarget_.json" -o x8dir

cat x8dir/*.json | jq -r '.[] | select(.found_params | length > 0) | "\(.url)?\( ([.found_params[] | select(.reason_kind == "Reflected
") | "\(.name)=rix4uni"] | join("&")) )"' | unew hidden-urls.txt

rm -rf paramfinderlinks.txt x8dir


# bash hidden-parameter.sh urls.txt
```

Remove Unnecessary urls
```yaml
for target in $(cat match.txt);do grep -E "(//$target|\.$target)" dorking-urls.txt;done | unew
```

New trick to find SelfHosted Programs
```yaml
echo "www.glia.com" | stoppiracy --silent --wordlist "Eligible Targets,we offer a monetary,We offer reward,monetary reward,eligible for a reward,we award a bounty,We offer monetary rewards,Bug Bounty Program, Security Reward Program, Responsible Disclosure Policy, Bug Bounty Program Policy, Security Bounty, Vulnerability Disclosure Policy, Report Vulnerability, Submit Vulnerability Report, Report a vulnerability, Security Disclosure Policy, Responsible Disclosure, Responsible Security Disclosure Policy, Disclosure Policy, Security Bounty Program, Report a Security Bug"
```

Tools used:
- https://github.com/rix4uni/unew
- https://github.com/rix4uni/paramfinder
- https://github.com/rix4uni/msarjun
- https://github.com/Sh1Yo/x8
- https://github.com/rix4uni/Interlace
- https://github.com/rix4uni/stoppiracy
