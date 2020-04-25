.PHONY: build push deploy

build:
	docker build -t gcr.io/games-274709/http:latest .

push:
	docker push gcr.io/games-274709/http:latest

deploy: build push
