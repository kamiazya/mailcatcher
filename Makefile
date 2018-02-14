.PHONY: build push

NAME=kamiazya/mailcatcher

build:
	docker build -t $(NAME) .

push: build
	docker push
