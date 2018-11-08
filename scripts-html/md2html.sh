#!/bin/bash

dir="../md-news/"
dirhtml="../tmp-news/"

for file in $(ls -t $dir | grep ".md"); do

	name=`echo "$file" | cut -d'.' -f1`
	pandoc "$dir$file" -f markdown -t html -o "$dirhtml$name.html"

	./create-news.sh $name

	echo "[OK] md2html >> $file"

done