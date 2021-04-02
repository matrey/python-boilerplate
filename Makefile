venv:
	# You might need to do this first: sudo apt-get install python3.9-venv
	python3.9 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install wheel

install:
	.venv/bin/pip install --prefer-binary -r requirements.txt

install-dev:
	.venv/bin/pip install --prefer-binary -r requirements-dev.txt

lint:
	.venv/bin/isort .
	.venv/bin/black $(shell pwd)
	.venv/bin/flake8 $(shell pwd)
	.venv/bin/mypy $(shell pwd)
