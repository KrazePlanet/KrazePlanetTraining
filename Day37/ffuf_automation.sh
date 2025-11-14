cat urls.txt | awk '{print $1}' | interlace -threads 10 -c "ffuf -s -u _target_/FUZZ -w advanced_sensitive_wordlist.txt -H \"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\" -of json -o _output_/_cleantarget_.json" -o ffuf-output


## For recurion
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | egrep -vE '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_directory.ffuf
# https://digitalselfcare.actcorp.in/includes
# http://sagadb.org/account
# http://sagadb.org/config~
# http://testphp.vulnweb.com/admin
# http://testphp.vulnweb.com/cgi-bin
# http://testphp.vulnweb.com//vendor/
# http://testphp.vulnweb.com//admin/
# http://testphp.vulnweb.com//CVS/

## Last step
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | grep -E '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_final.ffuf
# https://digitalselfcare.actcorp.in/logout.php
# https://digitalselfcare.actcorp.in/index.php
# http://testphp.vulnweb.com/showimage.php
# http://testphp.vulnweb.com/favicon.ico
# http://testphp.vulnweb.com//crossdomain.xml
# http://testphp.vulnweb.com//clientaccesspolicy.xml
# http://testphp.vulnweb.com/logout.php
# http://testphp.vulnweb.com/index.php
# http://testphp.vulnweb.com/signup.php


rm -rf ffuf-output/*.json
cat ffuf-output/fofa-output_directory.ffuf | awk '{print $1}' | interlace -threads 10 -c "ffuf -s -u _target_/FUZZ -w advanced_sensitive_wordlist.txt -H \"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\" -of json -o _output_/_cleantarget_.json" -o ffuf-output
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | egrep -vE '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_directory2.ffuf
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | grep -E '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_final.ffuf


rm -rf ffuf-output/*.json
cat ffuf-output/fofa-output_directory2.ffuf | awk '{print $1}' | interlace -threads 10 -c "ffuf -s -u _target_/FUZZ -w advanced_sensitive_wordlist.txt -H \"User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\" -of json -o _output_/_cleantarget_.json" -o ffuf-output
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | egrep -vE '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_directory3.ffuf
for file in ffuf-output/*.json;do cat "$file" | jq -r '.results | group_by(.words) | map(.[0]) | .[] | "\(.url)"';done | grep -E '^https?://[^/]+/.+\.' | unew ffuf-output/fofa-output_final.ffuf


rm -rf ffuf-output/fofa-output_directory.ffuf ffuf-output/fofa-output_directory2.ffuf ffuf-output/fofa-output_directory3.ffuf