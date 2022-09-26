install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	echo "Not implemented yet"
	#python -m pytest -vv test_*.py

format:
	black *.py CLI/*.sh

lint:
	pylint --disable=R,C CLI

all: install lint test