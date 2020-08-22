import os
import sys
sys.path.insert(0, os.path.abspath('../..'))

project = 'pytemplate'
copyright = '2020, Ray Chen'
author = 'Ray Chen'

release = '0.0.1'

extensions = [
    "sphinx.ext.autodoc",
    "sphinx.ext.napoleon"
]

templates_path = []

exclude_patterns = []

html_theme = 'alabaster'

html_static_path = []