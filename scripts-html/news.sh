#!/bin/bash

index_tmp="../tmp-html/news-tmp.html"
head='../tmp-html/head'
menu='../tmp-html/menu'
header='../tmp-html/header'

:> $index_tmp

#################################################
#
# Genrate the html HEAD tag
#
#################################################
./head.sh "News"
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
echo '' >> $index_tmp
echo '<div class="col-sm-8">' >> $index_tmp
echo ' <div class="panel panel-pyta">' >> $index_tmp
echo '  <div class="panel-heading"><h4>Last news</h4></div>  ' >> $index_tmp
echo '   <div class="panel-body">' >> $index_tmp
echo '' >> $index_tmp

# Read all the news.html from tmp-news dir

dir="../tmp-news/"
dirmd="../md-news/"

for file in $(ls -t $dirmd); do

	name=`echo "$file" | cut -d'.' -f1`
	
	modif=$(date -r $dirmd$name.md "+%m-%d-%Y %H:%M:%S")

	cat "$dir$name.html" | head -n +2 >> $index_tmp

	echo '<div class="read-more">' >> $index_tmp
	echo "	<a href=\"$name.html\" class=\"btn btn-lg btn-pyta\">read more</a>" >> $index_tmp
	echo "<br/>" >> $index_tmp
	echo "<br/>" >> $index_tmp
	echo "	<p><span class=\"last-modif\">last modification: $modif</span></p>" >> $index_tmp
	echo '</div>' >> $index_tmp

	

	echo "<hr/>" >> $index_tmp

	echo "<br/>" >> $index_tmp


done


echo '' >> $index_tmp

echo '' >> $index_tmp
echo '			' >> $index_tmp
echo '	 </div>' >> $index_tmp
echo '	</div>' >> $index_tmp
echo '' >> $index_tmp
echo '	<br/>' >> $index_tmp
echo '' >> $index_tmp
echo '	<br/>' >> $index_tmp
echo '	<br/>' >> $index_tmp
echo '	<br/>' >> $index_tmp
echo '' >> $index_tmp
echo '</div>' >> $index_tmp

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
index="../news.html"
cp $index_tmp $index
echo "..$1 news has been generated"