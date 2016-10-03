IMAGE_NAME = $(shell basename $(PWD))
CONTAINER_NAME = $(IMAGE_NAME)_c

all:
	@echo usage: \"make \{build,run,start,attach,stop,clean_container,clean_image,clean\}\"

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -i -t --name="$(CONTAINER_NAME)" $(IMAGE_NAME)

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

