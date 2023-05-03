.ONESHELL:
SHELL := /bin/bash
SRC = $(wildcard notebooks/*.ipynb)

all: biobot docs pypi

biobot: $(SRC)
	nbdev_build_lib
	jupyter nbconvert --to script --output ../biobot/whatsapp notebooks/10-body.ipynb
	pip install -e .
	touch biobot

sync:
	nbdev_update_lib

docs_serve: docs
	cd docs && jekyll serve --host 0.0.0.0

docs: $(SRC)
	nbdev_build_docs --fname notebooks/index.ipynb
	nbdev_build_docs --fname notebooks/00_init.ipynb
	nbdev_build_docs --fname notebooks/01_base.ipynb
	nbdev_build_docs --fname notebooks/02_constants.ipynb
	nbdev_build_docs --fname notebooks/04_moderation.ipynb
	nbdev_build_docs --fname notebooks/11-mind.ipynb
	nbdev_build_docs --fname notebooks/main-discord.ipynb
	touch docs

test:
	nbdev_test_nbs --fname notebooks/00_init.ipynb
	nbdev_test_nbs --fname notebooks/01_base.ipynb
	nbdev_test_nbs --fname notebooks/04_moderation.ipynb

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
