IMAGE_NAME = $(shell basename $(PWD))
CONTAINER_NAME = $(IMAGE_NAME)_c
USER_NAME = developer

all:
	@echo usage: \"make \{build,run,start,attach,stop,clean_container,clean_image,clean\}\"

build:
	docker build --build-arg user=$(USER_NAME) -t $(IMAGE_NAME) .

run:
	docker run -i -t --name="$(CONTAINER_NAME)" $(IMAGE_NAME) su - $(USER_NAME)

start:
	docker start $(CONTAINER_NAME)

attach:
	docker attach $(CONTAINER_NAME)

stop:
	docker stop $(CONTAINER_NAME)

clean_container:
	docker rm $(CONTAINER_NAME)

clean_image:
	docker rmi $(IMAGE_NAME)

clean:
	rm -rf *~
