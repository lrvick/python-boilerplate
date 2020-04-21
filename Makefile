.PHONY: clean-build clean-pyc clean-test clean-packages clean

VERSION:=$(shell python setup.py --version)

help:
	@echo "clean - remove all build, test, coverage and Python artifacts"
	@echo "clean-build - remove build artifacts"
	@echo "clean-pyc - remove Python file artifacts"
	@echo "clean-test - remove test and coverage artifacts"
	@echo "clean-packages - remove any installed versions of package"
	@echo "lint - check style with flake8"
	@echo "test - run tests quickly with the default Python"
	@echo "test-all - run tests on every Python version with tox"
	@echo "coverage - check code coverage quickly with the default Python"
	@echo "release - package and upload a release"
	@echo "dist - package"
	@echo "install - install the package to the active Python's site-packages"
	@echo "install-dist - install sdist build of package with pip"
	@echo "install-dev - install linked to working tree for development"

clean: clean-build clean-pyc clean-test clean-packages

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/

clean-packages:
	pip3 uninstall -y projectname || true

lint:
	flake8 projectname tests

test:
	python3 setup.py test

test-all:
	tox

coverage:
	coverage run --source projectname setup.py test
	coverage report -m

release: clean
	python3 setup.py sdist upload
	python3 setup.py bdist_wheel upload

dist: clean
	python3 setup.py sdist
	python3 setup.py bdist_wheel
	ls -l dist

install: clean
	python3 setup.py install --user

install-dev: clean
	python3 setup.py develop --user

install-dist: clean dist
	pip3 install --user dist/projectname-$(VERSION).tar.gz
