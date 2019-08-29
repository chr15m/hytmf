#!/usr/bin/env python

from distutils.core import setup

# convert readme to whatever pypi requires
try:
   import pypandoc
   long_description = pypandoc.convert('README.md', 'rst')
except:
   long_description = ''

setup(name='hymtf',
      version='0.1',
      description='Micro-testing framework for Hy.',
      long_description=long_description,
      author='Chris McCormick',
      author_email='chris@mccormick.cx',
      url='http://github.com/chr15m/hymtf',
      packages=['hymtf'],
      package_data = {
          'hymtf' : ['*.hy'],
      },
)
