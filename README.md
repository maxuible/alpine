# Alpine Repo
This holds my configs and some notes on Alpine Linux as I set it up

---

## Setup.sh
Steps:
I would look through setup.sh and /config/mvconfig.sh to see what they are doing before running these scripts
- install alpine linux via setup-alpine
- log into user
- log into root shell
- give user doas perms
- exit root shell
- doas apk add git
- git clone https://github.com/maxuible/alpine
- cd alpine
- ./setup.sh
