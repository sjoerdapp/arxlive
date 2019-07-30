#!/bin/bash

cd arxlive-search
npm run build
# cp build/static/css/*.css ../arxlive/static/arxlive-search.css
cp build/static/js/*.js ../arxlive/static/arxlive-search.js
cd ..
. venv/bin/activate
echo Uploading static files to S3
python static_to_s3.py
zappa update dev
