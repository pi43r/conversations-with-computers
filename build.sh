#!/bin/bash

pandoc .pandoc-config.yml $1 -o output/$1.html --standalone -C --file-scope
