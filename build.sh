#!/bin/bash

pandoc .pandoc-config.yml Chapters/00_Hello-World.md Chapters/01_Talking-to-Computers.md endnotes.md -o output/cwc.pdf --standalone -C --file-scope
