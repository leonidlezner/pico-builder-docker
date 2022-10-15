CONTAINER_VERSION=`cat VERSION`

build:
	docker build --tag leonidlezner/pico-builder:$(CONTAINER_VERSION) .

publish:
	docker push leonidlezner/pico-builder:$(CONTAINER_VERSION)

remove:
	docker rmi leonidlezner/pico-builder:$(CONTAINER_VERSION) --force

latest:
	docker tag leonidlezner/pico-builder:$(CONTAINER_VERSION) leonidlezner/pico-builder:latest
	docker push leonidlezner/pico-builder:latest

shell:
	docker run -it --entrypoint "/bin/bash" --volume "$(pwd):/data" leonidlezner/pico-builder:$(CONTAINER_VERSION)