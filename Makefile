
default:	build

clean:
	rm -rf Makefile objs

.PHONY:	default clean

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/martin/Projects/split/ws/sandbox/sbin/nginx -t

	kill -USR2 `cat /home/martin/Projects/split/ws/sandbox/logs/nginx.pid`
	sleep 1
	test -f /home/martin/Projects/split/ws/sandbox/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/martin/Projects/split/ws/sandbox/logs/nginx.pid.oldbin`

.PHONY:	build install modules upgrade
