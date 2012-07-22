all: delete build

build:
	run-rstblog

delete:
	rm -rf _build

deploy:
	rsync -avzCc _build/* freegli2:/var/www/toronto/ --progress --delete

