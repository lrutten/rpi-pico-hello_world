all: help

help:
	echo "make clean"
	echo "make init"

init:
	mkdir build;cd build; cmake ..

build/hello_usb.uf2: hello_usb.c
	cd build; make

build: build/hello_usb.uf2

install: build/hello_usb.uf2
	picotool load build/hello_usb.uf2

info:
	picotool info -a

clean:
	rm -Rvf build

