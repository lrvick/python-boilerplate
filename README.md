# Python Boilerplate #

<http://github.com/lrvick/python-boilerplate>

## About ##

This is my python boilerplate project with an example, a test, and a Makefile
for running cleanup, install as well as calling lint, coverage, compatibility,
unit tests etc.

## Current Features ##

  * Test coverage -> python-coverage
  * Compatibility testing -> tox
  * Code linting -> flake8
  * Install -> setuptools

## Usage / Installation ##

1. Replace projectname with your project name.

    ```bash
    find ./ -type f -exec sed -i -e 's/projectname/bettername/g' {} \;
    ```

2. Run tests

    ```bash
    make test
    ```
3.  Edit tests, code, and docs to something useful

## Notes ##

  Use at your own risk. You may be eaten by a grue.
