# Day21 — How to Install & Configure GarudRecon (DigitalOcean + WSL) — Full Walkthrough:
[![Day21 — How to Install & Configure GarudRecon (DigitalOcean + WSL) — Full Walkthrough:](https://img.youtube.com/vi/TgrTqJrIdZY/maxresdefault.jpg)](https://youtu.be/TgrTqJrIdZY)
<img width="1920" height="1080" alt="2025-10-14 09_32_48-Media Player" src="https://github.com/user-attachments/assets/44166955-2979-4528-afd0-fbec601c4100" />

## Timestamps
- [`00:00:00 — Start`](https://youtu.be/TgrTqJrIdZY?t=0)
- [`00:00:05 — What is GarudRecon`](https://youtu.be/TgrTqJrIdZY?t=5)
- [`00:01:03 — GarudRecon Operating Systems Tested`](https://youtu.be/TgrTqJrIdZY?t=63)
- [`00:01:54 — GarudRecon Configuration`](https://youtu.be/TgrTqJrIdZY?t=114)
- [`00:21:45 — GarudRecon Installation (DigitalOcean + WSL)`](https://youtu.be/TgrTqJrIdZY?t=1305)
- [`00:51:13 — Discord Webhook Setup`](https://youtu.be/TgrTqJrIdZY?t=3073)
- [`02:04:11 — SmallScope Mode`](https://youtu.be/TgrTqJrIdZY?t=7451)
- [`02:13:10 — MediumScope Mode`](https://youtu.be/TgrTqJrIdZY?t=7990)
- [`02:36:31 — LargeScope Mode`](https://youtu.be/TgrTqJrIdZY?t=9391)
- [`03:02:41 — CidrScope Mode`](https://youtu.be/TgrTqJrIdZY?t=10961)
- [`03:06:25 — Workflow Mode`](https://youtu.be/TgrTqJrIdZY?t=11185)
- [`03:19:49 — Fleet Mode`](https://youtu.be/TgrTqJrIdZY?t=11989)
- [`03:22:34 — CronJobs Mode`](https://youtu.be/TgrTqJrIdZY?t=12154)
- [`03:25:05 — GarudRecon Short commands`](https://youtu.be/TgrTqJrIdZY?t=12305)

## Recommended Timestamps for `GarudRecon workflows`
- [`03:37:56 — Create custom GarudRecon workflows`](https://youtu.be/KPHZ7p4Snag?t=13076)
- [`02:39:53 — GarudRecon workflow for mass RXSS`](https://youtu.be/DeWsuYi8cHE?t=9593)
- [`02:35:08 — Mass Hunting CVE using GarudRecon workflow`](https://youtu.be/qApDuQkBVgY?t=9308)

## Resources
### GarudRecon Operating Systems Tested
- Ubuntu 24.04
- Kali 2025.2

### GarudRecon Configuration
- MODE FLAGS
- TIMELIMITX FLAGS
- OTHER FLAGS
- Default Excluded Functions, You can change if you want

### GarudRecon Install
Note:
❌ Don't use:
- sudo su
- sudo configure
- sudo garudrecon

✅ Use instead root user:
- You must be a root user
- Make sure your shell is set to bash
- Check Your shell echo $SHELL

### Digital Ocean `24.04 (LTS) x64` Installation
https://codepen.io/rix4uni/pen/PwZzdpV

- bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure) --update
- ✅ Discord Webhook Setup

### Wsl Kali Installation
- bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure) --update
- ✅ Discord Webhook Setup

#### set kali-linux in default
wsl --set-default Ubuntu-24.04
wsl --set-default kali-linux

#### set defautl login as root
ubuntu2404 config --default-user root
kali config --default-user root

### SmallScope Mode

### MediumScope Mode

### LargeScope Mode
- garudrecon largescope -d indeed -s

### CidrScope Mode
- Not Completed Yet

### Workflow Mode

### Fleet Mode
- Not Completed Yet

### CronJobs Mode

✅ Short commands
