# python-boilerplate


```bash
for infile in .flake8 .gitignore .isort.cfg Makefile mypy.ini requirements-dev.txt setup.py; do if [[ -f "${infile}" ]]; then echo "Skipping existing file ${infile}"; else echo "Downloading file ${infile}..."; curl -Ss -L -o "${infile}" "https://raw.githubusercontent.com/matrey/python-boilerplate/master/${infile}"; fi; done; touch README.md requirements.txt
```
