.ONESHELL:
SHELL := /bin/bash
SRC = $(wildcard notebooks/*.ipynb)

all: biobot docs

biobot: $(SRC)
	nbdev_export
	jupyter nbconvert --to script --output ../biobot/whatsapp notebooks/10-body.ipynb
	touch biobot

sync:
	nbdev_update

docs_serve: docs
	cd docs && jekyll serve --host 0.0.0.0

docs: $(SRC)
	nbdev_docs
	touch docs

test:
	nbdev_test

release: pypi conda_release
	nbdev_bump_version

conda_release:
	fastrelease_conda_package

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist
