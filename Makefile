.PHONY:	up
up:
	docker compose up --build -d

.PHONY:	down
down:
	docker compose down

.PHONY:	it
it:
	docker compose exec app bash

.PHONY: kill_aslr
kill_aslr:
	sudo bash -c 'echo 0 > /proc/sys/kernel/randomize_va_space'

a.out:
	gcc -m32 -z execstack c.c
