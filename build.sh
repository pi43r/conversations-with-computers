#!/bin/bash

# pandoc .pandoc-config.yml $1 -o output/$1.html --standalone -C --file-scope

pandoc .pandoc-config.yml Chapters/* -o output/all-cwc.pdf --pdf-engine=xelatex --standalone -C --file-scope --resource-path=./Images/ --filter ./skipbrokenimg.py
