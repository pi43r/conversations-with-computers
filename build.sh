#!/bin/bash

# Single Pages
#pandoc .pandoc-config.yml $1 -o output/$1.html --standalone -C --file-scope

#all to html
pandoc .pandoc-config.yml Chapters/* -o output/all-cwc.html -C --file-scope --resource-path=./Images/original/

# all to pdf
#pandoc .pandoc-config.yml Chapters/* -o output/all-cwc.pdf --pdf-engine=xelatex --standalone -C --file-scope --resource-path=./Images/


# pandoc .pandoc-config.yml Chapters/* -o output/all-cwc.html --pdf-engine=xelatex --standalone -C --file-scope --resource-path=./Images/
