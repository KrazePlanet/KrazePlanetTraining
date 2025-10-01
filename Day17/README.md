

```
cat subs.txt | unew | nuclei -t git-config-files.yaml
```

```
goop https://domain.com
```


Method1
```
### Step1: collect wildcards using scope
curl -s "https://raw.githubusercontent.com/rix4uni/scope/refs/heads/main/data/Wildcards/inscope_wildcards.txt" | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew -q wildcards.txt
curl -s "https://raw.githubusercontent.com/KrazePlanet/KrazePlanetPrograms/refs/heads/main/programs.json" | jq -r '.[].inscope_domains[]' | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew wildcards.txt

### Step2: collect wildcards using scope
critical paths: https://github.com/rix4uni/nucleihubquery/blob/main/shodan/shodan-query-critical.txt
https://www.shodan.io/search?query=ssl:nutakupublishing.com http.title:"Dashboard [Jenkins]"

### Step2: check with nuclei
cat ips.txt | unew | nuclei -duc -silent -nc -t unauthenticated-jenkins-rce.yaml | unew subs.nuclei
```

Method2
```
### Step1: collect wildcards using scope
curl -s "https://raw.githubusercontent.com/rix4uni/scope/refs/heads/main/data/Wildcards/inscope_wildcards.txt" | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew -q wildcards.txt
curl -s "https://raw.githubusercontent.com/KrazePlanet/KrazePlanetPrograms/refs/heads/main/programs.json" | jq -r '.[].inscope_domains[]' | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew wildcards.txt

### Step2: collect wildcards subdomains
subfinder -duc -silent -dL wildcards.txt -all | oosexclude | httpx -duc -silent -nc | unew subs.httpx

### Step2: check with nuclei
cat subs.httpx | nuclei -duc -silent -nc -t unauthenticated-jenkins-rce.yaml | unew subs.nuclei
```
