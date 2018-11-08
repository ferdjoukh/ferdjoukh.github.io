#!/bin/bash

index_tmp='../tmp-html/teaching-tmp.html'
head='../tmp-html/head'
menu='../tmp-html/menu'
header='../tmp-html/header'

:> $index_tmp

echo '<!DOCTYPE html>' >> $index_tmp
echo '<html>' >> $index_tmp

#################################################
#
# Genrate the html HEAD tag
#
#################################################
./head.sh "Teaching"
cat $head >> $index_tmp
echo ''>> $index_tmp

echo '<body>' >> $index_tmp

#################################################
#
# Generate the navigation menu
#
#################################################
./menu.sh
cat $menu >> $index_tmp
echo ''>> $index_tmp

#################################################
#
# Generate the header and about section
#
#################################################
./header.sh
cat $header >> $index_tmp
echo ''>> $index_tmp

#
echo '<div class="container">' >> $index_tmp

### OPEN row
echo '<div class="row">' >> $index_tmp

#################################################
#
# Generate the content of the page (left col)
#
#################################################
cat "../sub-pages/col-left-teaching.html" >> $index_tmp

#################################################
#
# Add the right column
#
#################################################
cat "../sub-pages/col.html" >> $index_tmp

### CLOSE row
echo '</div>' >> $index_tmp

#################################################
#
# Close container
#
#################################################
echo '</div>' >> $index_tmp


#Close html and body
echo '</body>' >> $index_tmp
echo '</html>' >> $index_tmp

#################################################
#
# Copy the produced page into the main folder
#
#################################################
index='../teaching.html'
cp $index_tmp $index
echo "..teaching.html page has been generated"