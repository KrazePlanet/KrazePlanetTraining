echo "$1" | waybackurls | grep -a "\.pdf$" | unew $1.txt
# echo "$1" | waybackurlsx --silent --retries 3 --filter ".*\.(pdf)$" | unew $1.txt


cat $1.txt | httpx -duc -silent -mc 200 | interlace --silent -threads 10 -c "curl -s _target_ | pdftotext - _output_/_cleantarget_.txt 2>/dev/null" -o pdftotextdir | tee interlace.txt


find pdftotextdir -type f -print0 | xargs --null grep -a -Z -L -Eai 'internal use only|confidential' | xargs --null rm -rf

grep -F -f <(ls pdftotextdir) interlace.txt | sort -u