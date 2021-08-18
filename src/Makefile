.PHONY: venv upgrade install-prod install-dev lint

venv:
	# You might need to do this first:
	# sudo add-apt-repository ppa:deadsnakes/ppa
	# sudo apt-get install python3.9-venv
	python3.9 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install wheel toml pip-tools

upgrade:
	.venv/bin/python3 -c 'import toml; c = toml.load("pyproject.toml"); print("# Auto-generated from pyproject.toml\n"); print("\n".join(c["project"]["dependencies"]), end="")' > requirements.in
	.venv/bin/python3 -c 'import toml; c = toml.load("pyproject.toml"); print("# Auto-generated from pyproject.toml\n"); print("\n".join(c["project"]["optional-dependencies"]["dev"]), end="")' > requirements-dev.in
	.venv/bin/pip-compile --upgrade requirements.in
	.venv/bin/pip-compile --upgrade requirements-dev.in

install-prod:
	.venv/bin/pip-sync requirements.txt

install-dev:
	.venv/bin/pip-sync requirements.txt requirements-dev.txt

lint:
	.venv/bin/isort .
	.venv/bin/black $(shell pwd)
	.venv/bin/flakehell lint $(shell pwd)
	.venv/bin/mypy $(shell pwd)

