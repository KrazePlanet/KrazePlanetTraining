# Day16 - How to Find Hidden Secrets on Github:
[![Day16 - How to Find Hidden Secrets on Github:](https://img.youtube.com/vi/-Ovd4ThwQg0/maxresdefault.jpg)](https://youtu.be/-Ovd4ThwQg0)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/-Ovd4ThwQg0?t=0)
- [`00:03:37 — Why Do Github Recon?`](https://youtu.be/-Ovd4ThwQg0?t=217)
- [`00:44:25 — Find Hidden Secrets Github using gitrepoenum`](https://youtu.be/-Ovd4ThwQg0?t=2665)
- [`03:33:16 — Run Github Actions on nucleihubquery`](https://youtu.be/-Ovd4ThwQg0?t=12796)

# Resources
```
curl -H "Authorization: token $GH_TOKEN" -H "Accept: application/vnd.github.v3+json" https://api.github.com/user
```

### Add you token
```
nano ~/.config/github-token.txt
```

### Single repo
```
echo "https://github.com/victimbhai/test.git" | gitrepoenum download --depth 1
gitrepoenum commit -i ~/allgithubrepo/download -d all -o ~/allgithubrepo/commits
gitrepoenum code -i ~/allgithubrepo/download -o ~/allgithubrepo/commits
gitrepoenum vuln -i ~/allgithubrepo/commits -o ~/allgithubrepo/commits --id gitleaks
```

### Organization
```
echo "Shopify" | gitrepoenum org -o output.json
cat output.json | jq -r '.[] | select((.updated_at | fromdateiso8601) > (now - 86400)) | .clone_url' | unew -q reponames.txt
cat reponames.txt | gitrepoenum download --depth 1
gitrepoenum commit -i ~/allgithubrepo/download -d all -o ~/allgithubrepo/commits
gitrepoenum code -i ~/allgithubrepo/download -o ~/allgithubrepo/commits
gitrepoenum vuln -i ~/allgithubrepo/commits -o ~/allgithubrepo/commits --id gitleaks
```

## Tools
- https://github.com/rix4uni/gitrepoenum
- https://github.com/rix4uni/nucleihubquery
