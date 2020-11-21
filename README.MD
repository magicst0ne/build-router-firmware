build merlin firmeware
==================
install ubuntu 18.04 or 20.04

create user merlin for build：
```
adduser merlin sudo
su - merlin
```

setup build env and build firmware：
```
./merlin/linux-apt.sh
./merlin/set-toolchain.sh
./merlin/update-merlin.sh
./merlin/build-ac88u.sh
```
