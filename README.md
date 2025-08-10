# Alpine Repo
This holds my configs and some notes on Alpine Linux as I set it up

---


## Setup.sh


**THERE IS A SECURITY RISK WITH THIS SCRIPT**

Adding a user to the video group is considered a security risk
[https://gitlab.alpinelinux.org/alpine/aports/-/issues/15409]


Steps:
Please look through setup.sh and /config/mvconfig.sh to see what they are doing before running this script
- install alpine linux via setup-alpine
- log into user
- log into root shell (su in the terminal)
- give user doas perms (edit /etc/doas.conf)
- exit root shell
- add git apk (doas apk add git)
- clone the repo (git clone https://github.com/maxuible/alpine)
- go into repo folder (cd alpine)
- run the script (./setup.sh)
