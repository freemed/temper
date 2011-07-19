#
# $Id: Makefile 2022 2010-05-04 15:16:32Z jbuchbinder $
#

all:	temper

CFLAGS = -O2 -Wall

temper:	temper.c
	${CC} -o $@ $^ -lusb

clean:		
	rm -f temper *.o

rules-install:			# must be superuser to do this
	cp 99-tempsensor.rules /etc/udev/rules.d
