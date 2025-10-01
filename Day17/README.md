

```
cat subs.txt | unew | nuclei -t git-config-files.yaml
```

```
goop https://domain.com
```


### Method1
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

### Method2
```
### Step1: collect wildcards using scope
curl -s "https://raw.githubusercontent.com/rix4uni/scope/refs/heads/main/data/Wildcards/inscope_wildcards.txt" | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew -q wildcards.txt
curl -s "https://raw.githubusercontent.com/KrazePlanet/KrazePlanetPrograms/refs/heads/main/programs.json" | jq -r '.[].inscope_domains[]' | sed 's/^\*\.//' | sed 's/^\*//' | sed 's/^\.//' | grep -v "*" | tldinfo --silent --extract domain,suffix | unew wildcards.txt

### Step2: collect wildcards subdomains
subfinder -duc -silent -dL wildcards.txt -all | oosexclude | httpx -duc -silent -nc | unew subs.httpx

### Step2: check with nuclei
cat subs.httpx | nuclei -duc -silent -nc -t unauthenticated-jenkins-rce.yaml | unew subs.nuclei
```

### Find vuln using shodan with ipfinder
```
echo 'ssl:"shopify.com"' | ipfinder shodan --silent | portmap internetdb | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}(:[0-9]+)?' | unew -el shopify.com.portmap

while IFS= read -r line; do ip=$(echo "$line" | certinfo -silent -san 2>/dev/null); echo "$ip $result"; done < shopify.com.portmap | unew -el shopify.com.certinfo

cat shopify.com.certinfo | grep -e "\.shopify.com," -e "\.shopify.com]" -e "\[shopify.com," | awk '{print $1}' | httpx -duc -silent -nc -sc -title -td -cl -ct -t 50 | unew shopify.com.httpx

cat shopify.com.httpx | awk '!seen[$3]++' | awk '{print $1}' | nuclei -duc -silent -nc -severity critical -t ~/nuclei-templates | unew shopify.com.nuclei
```
