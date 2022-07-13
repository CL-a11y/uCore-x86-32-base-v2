setenv:	gcc
	sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev \
              gawk build-essential bison flex texinfo gperf libtool patchutils bc \
              zlib1g-dev libexpat-dev pkg-config  libglib2.0-dev libpixman-1-dev git tmux python3 ninja-build zsh -y
	cd .. && wget https://download.qemu.org/qemu-7.0.0.tar.xz
	cd .. && tar xvJf qemu-7.0.0.tar.xz
	cd ../qemu-7.0.0 && ./configure --target-list=i386-softmmu,i386-linux-user
	cd ../qemu-7.0.0 && make -j$(nproc)
	cd ../qemu-7.0.0 && sudo make install
	qemu-system-i386 --version
	qemu-i386 --version

gcc:
	echo "deb http://dk.archive.ubuntu.com/ubuntu/ xenial main" >> /etc/apt/sources.list
	echo "deb http://dk.archive.ubuntu.com/ubuntu/ xenial universe" >> /etc/apt/sources.list
	sudo apt update
	sudo apt install -y gcc-4.8


lab1:
	sed -i 's/lab/lab1/g' .github/classroom/autograding.json
	cd lab1 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab1/.qemu.out
	cd lab1 && make grade CC=gcc-4.8

lab2:
	sed -i 's/lab/lab2/g' .github/classroom/autograding.json
	cd lab2 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab2/.qemu.out
	cd lab2 && make grade CC=gcc-4.8

lab3:
	sed -i 's/lab/lab3/g' .github/classroom/autograding.json
	cd lab3 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab3/.qemu.out
	cd lab3 && make grade CC=gcc-4.8

lab4:
	sed -i 's/lab/lab4/g' .github/classroom/autograding.json
	cd lab4 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab4/.qemu.out
	cd lab4 && make grade CC=gcc-4.8

lab5:
	sed -i 's/lab/lab5/g' .github/classroom/autograding.json
	cd lab5 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab5/.qemu.out
	cd lab5 && make grade CC=gcc-4.8

lab6:
	sed -i 's/lab/lab6/g' .github/classroom/autograding.json
	cd lab6 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab6/.qemu.out
	cd lab6 && make grade CC=gcc-4.8

lab7:
	sed -i 's/lab/lab7/g' .github/classroom/autograding.json
	cd lab7 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab7/.qemu.out
	cd lab7 && make grade CC=gcc-4.8

lab8:
	sed -i 's/lab/lab8/g' .github/classroom/autograding.json
	cd lab8 && make qemu CC=gcc-4.8 > .qemu.out
	cat ./lab8/.qemu.out
	cd lab8 && make grade CC=gcc-4.8