python setup.py bdist_wheel sdist
rm -rf build/ pytemplate.egg-info/ docs/build/html/
find docs/source/* ! -name conf.py -delete
sphinx-apidoc -e F -M -o docs/source pytemplate pytemplate/config.py
sphinx-build -b html docs/source docs/build/html
git add .
git commit -m $1
git push
pip install --upgrade dist/pytemplate-0.0.1-py3-none-any.whl