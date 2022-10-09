install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	./test.sh

container-lint:
	docker run --rm -i hadolint/hadolint < CLI/Dockerfile

all: install test