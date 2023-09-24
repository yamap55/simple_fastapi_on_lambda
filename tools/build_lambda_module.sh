#!/bin/bash

rm -rf ./dist
poetry build
pip install --upgrade -t ./dist/package dist/*.whl
cd dist/package && zip -r ../artifact.zip . -x '*.pyc'
