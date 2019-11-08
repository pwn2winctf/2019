# Pwn2Win CTF 2019

About our NIZK (Non-Interactive Zero-Knowledge) Platform: [arXiv:1708.05844](https://arxiv.org/pdf/1708.05844.pdf).


## Installing the platform client

Next year we plan to have a web-based client. For this edition, please choose one of the options below to install our command line client.


### Option 1: Docker

Clone this repository:
```bash
git clone https://github.com/pwn2winctf/2019.git
cd 2019
```

Then **either** generate a new SSH key:
```bash
ssh-keygen -t ed25519 -f .ssh/id_ed25519
cat .ssh/id_ed25519.pub  # add to your GitHub account (https://github.com/settings/keys)
```

**or** copy an existing one:
```bash
cp ~/.ssh/id_* .ssh/
```

Finally, follow the [registration](#registration) instructions below, always replacing `$CTF` with `./dctf`.

```bash
CTF=./dctf
```


### Option 2: LXD

Create the container:
```bash
wget https://static.pwn2win.party/pwn2win2019.tar.gz
lxc image import pwn2win2019.tar.gz --alias=pwn2win
lxc launch pwn2win pwn2win
lxc exec pwn2win -- git pull   # make sure the repository is up to date
```

Then **either** generate a new SSH key:
```bash
lxc exec pwn2win -- ssh-keygen -t ed25519
lxc exec pwn2win -- cat .ssh/id_ed25519.pub  # add to your GitHub account (https://github.com/settings/keys)
```

**or** copy an existing one:
```bash
lxc file push ~/.ssh/id_* pwn2win/root/.ssh/
```

Finally, follow the [registration](#registration) instructions below, always replacing `$CTF` with `lxc exec pwn2win -- ./ctf`.

```bash
CTF="lxc exec pwn2win -- ./ctf"
```


### Option 3: Your box

Make sure you already have an SSH key in your box which is [linked to your GitHub account](https://github.com/settings/keys).

Clone this repository:
```bash
git clone git@github.com:pwn2winctf/2019.git
cd 2019
```

And install the dependencies, *e.g.* for Debian or Ubuntu:
```bash
sudo apt-get install libsodium23
curl https://bootstrap.pypa.io/get-pip.py | sudo -H python
sudo -H python -m pip install -r pip-requirements.txt
```

Finally, follow the [registration](#registration) instructions below, always replacing `$CTF` with `./ctf`.

```bash
CTF=./ctf
```


## Registration

Run:
```bash
$CTF init
```

If you are **the leader** of the team, answer `y` when you are asked whether you want to register a new team. Share the generated `team-secrets.json` file with the members of the team.

If you are one of the **other members of the team**, place the `team-secrets.json` file shared by your team leader in your `2019` directory.


## Challenges

Challenges are available at https://pwn2.win/2019.

If you prefer to browse them locally, you may also run:
```bash
git pull && $CTF challs
```

## Flag submission

If the challenge was recently released, you might need to update your local repository first:
```bash
git pull
```

To submit a flag:
```bash
$CTF submit --chall challenge-id 'CTF-BR{flag123}'
```

You may omit `--chall challenge-id` from the command, however it will be *very* slow to run this way since it tries the supplied flag against every challenge.


## Scoreboard

You can see the scoreboard at the game URL (https://pwn2.win/2019) or running the command:
```bash
$CTF score --names --pull
```


## Support

You may reach us through #pwn2win at irc.freenode.net.
