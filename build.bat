@ECHO OFF

python setup.py bdist_wheel sdist
RMDIR /S /Q "build/" /S /Q "pytemplate.egg-info/" /S /Q "docs/build/html/"
cd docs/source && move conf.py .. && cd ..
del /Q source && move conf.py source && cd ..
sphinx-apidoc -e -F -M -o docs/source pytemplate pytemplate/config.py
sphinx-build -b html docs/source docs/build/html
git add .
git commit -m %1
git push
pip install --upgrade dist/pytemplate-0.0.1-py3-none-any.whl