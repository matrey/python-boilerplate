venv:
	# You might need to do this first:
	# sudo add-apt-repository ppa:deadsnakes/ppa
	# sudo apt-get install python3.9-venv
	python3.9 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install wheel toml

install:
	.venv/bin/python3 -c 'import toml; c = toml.load("pyproject.toml"); print("\0".join(c["project"]["dependencies"]), end="")' | xargs -0 .venv/bin/pip install --prefer-binary

install-dev:
	.venv/bin/python3 -c 'import toml; c = toml.load("pyproject.toml"); print("\0".join(c["project"]["optional-dependencies"]["dev"]), end="")' | xargs -0 .venv/bin/pip install --prefer-binary

lint:
	.venv/bin/isort .
	.venv/bin/black $(shell pwd)
	.venv/bin/flakehell lint $(shell pwd)
	.venv/bin/mypy $(shell pwd)

