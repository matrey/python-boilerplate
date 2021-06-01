# python-boilerplate


```bash
for infile in .gitignore Makefile pyproject.toml; do 
  if [[ -f "${infile}" ]]; then 
    echo "Skipping existing file ${infile}"
  else
    echo "Downloading file ${infile}..."
    curl -Ss -L -o "${infile}" "https://raw.githubusercontent.com/matrey/python-boilerplate/master/src/${infile}"
  fi
done
make venv install-dev 
```
