# python-boilerplate


```bash
BASEURL="https://raw.githubusercontent.com/matrey/python-boilerplate/master"
# BASEURL="https://gitee.com/matrey/python-boilerplate/raw/master" # from China

for infile in .gitignore Makefile pyproject.toml; do 
  if [[ -f "${infile}" ]]; then 
    echo "Skipping existing file ${infile}"
  else
    echo "Downloading file ${infile}..."
    curl -Ss -L -o "${infile}" "${BASEURL}/src/${infile}"
  fi
done

make venv install-dev 
```
