#!/bin/bash

# PARAMETER
# 	$1: page title 

head='../tmp-html/head'
:> $head

echo '<head>' >> $head
echo '<meta name="description" content="">' >> $head
echo '<meta name="author" content="Adel Ferdjoukh">' >> $head
echo '<link rel="icon" href="img/ama.jpg">' >> $head
echo '<meta charset="utf-8">' >> $head
echo '<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> $head
echo '<meta name="viewport" content="width=device-width, initial-scale=1">' >> $head
echo "<title>Adel Ferdjoukh - $1</title>" >> $head
echo '<!-- Bootstrap core CSS -->' >> $head
echo '<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">' >> $head
echo '<script src="bootstrap/js/jquery-3.3.1.min.js"></script>' >> $head
echo '<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>' >> $head
echo '<script src="bootstrap/js/bootstrap.min.js"></script>' >> $head
echo '<!-- Custom styles for this template -->' >> $head
echo '<link href="css-js/lot.css" rel="stylesheet">' >> $head

echo "<script>" >> $head
echo "\$(document).ready(function(){" >> $head
echo "\$('[data-toggle=\"popover\"]').popover(); " >> $head
echo "});" >> $head
echo "</script>" >> $head

echo '<script type="text/javascript" src="css-js/bibtex.js"></script>' >> $head

echo '</head>' >> $head