# Day11 - Directory fuzzing & custom wordlists (special tricks):
[![Day11 - Directory fuzzing & custom wordlists (special tricks):](https://img.youtube.com/vi/hRAaCff5kyY/maxresdefault.jpg)](https://youtu.be/hRAaCff5kyY)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/hRAaCff5kyY?t=0)
- [`00:00:03 — Directory fuzzing`](https://youtu.be/hRAaCff5kyY?t=3)
- [`01:36:18 — Create custom wordlists`](https://youtu.be/hRAaCff5kyY?t=5778)
- [`02:51:22 — Directory fuzzing with nuclei tags custom wordlists`](https://youtu.be/hRAaCff5kyY?t=10282)

## Resources
```yaml
MySQL, Ngnix, PHP, wordpress

### i am working on my own project that usese these above techs
### write an custom 500+ wordlist for directory fuzzing so i can check for directories fuzzing that are sensitive to find more vulnerability and help in them fix
```

```yaml
Jenkins, Swagger UI, IIS Windows Server, Kibana

### i am working on my own project that usese these above techs
### write an custom 500+ wordlist for directory fuzzing so i can check for directories fuzzing that are sensitive to find more vulnerability and help in them fix
```

```yaml
ends with .log, .zip, .sql, .old

### i am working on my own project that usese these above techs
### write an custom 500+ wordlist for directory fuzzing so i can check for directories fuzzing that are sensitive to find more vulnerability and help in them fix
```

- https://github.com/rix4uni/WordList/blob/main/advanced_sensitive_wordlist.txt
- https://github.com/rix4uni/WordList/blob/main/nuclei-tags.txt

## Fuzzing backup file on 403,302,404 HTTP status code
▶ Step 1:
- Method: 1
  ```yaml
  mkdir -p ffuf-output && echo "dell.com" | subfinder -duc -silent -nc | httpx -duc -silent -nc -sc | grep "\[403\]" | awk '{print $1}' | unew -q subs.httpx
  ```

- Method: 2
  ```yaml
  mkdir -p ffuf-output && echo "ssl:\"dell.com\"" | ipfinder shodan -s | unew | httpx -duc -silent -nc -sc | grep "\[403\]" | awk '{print $1}' | unew -q subs.httpx
  ```

▶ Step 2:
```yaml
cat subs.httpx | while read host do;do ffuf -c -u $host/FUZZ -w advanced_sensitive_wordlist.txt -H "User-Agent: YOUR_USERAGENT" -mc 200 -fs 0 -v -t 200 -rate 1000 -recursion -recursion-depth 5 -maxtime 1800 -maxtime-job 1800 -o "ffuf-output/$(echo $host | sed 's/http[s]\?:\/\///g' | tr -d '\r').json";done
```

▶ Step 3:
```yaml
for file in ffuf-output/*.json;do output=$(cat "$file" | jq -r '.results[] | "\(.url) [Status: \(.status), Size: \(.length), Words: \(.words), Lines: \(.lines)]"' | awk '!seen[$7]++');if [ ! -z "$output" ];then echo -e "=== File: $file ===";echo -e "$output\n";fi;done | unew -a alloutput.ffuf
```

I usally FUZZ 403,302,404 HTTP status code

This awk command ignores all urls of same size except 1 url:

awk '!seen[$5]++')
