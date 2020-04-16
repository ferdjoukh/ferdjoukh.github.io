#!/bin/bash

menu='../tmp-html/menu'
:> $menu

echo '' >> $menu

echo '   <nav class="navbar navbar-inverse navbar-fixed-top">' >> $menu
echo '     <div class="container">' >> $menu
echo '       <div class="navbar-header">' >> $menu
echo '         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">' >> $menu
echo '           <span class="sr-only">Toggle navigation</span>' >> $menu
echo '           <span class="icon-bar"></span>' >> $menu
echo '           <span class="icon-bar"></span>' >> $menu
echo '           <span class="icon-bar"></span>' >> $menu
echo '         </button>' >> $menu
echo '         <a class="navbar-brand" href="index.html">Adel Ferdjoukh</a>' >> $menu
echo '       </div>' >> $menu
echo '       <div id="navbar" class="collapse navbar-collapse">' >> $menu
echo '         <ul class="nav navbar-nav">' >> $menu
echo '           <li><a href="index.html">Home</a></li>' >> $menu
echo '           <li><a href="news.html">News</a></li>' >> $menu


############################
#
# CV
#
###########################
echo '' >> $menu
echo '           <li class="dropdown">' >> $menu
 echo '           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Curriculum Vitae <b class="caret"></b></a>' >> $menu
  echo '           <ul class="dropdown-menu">' >> $menu

  	echo '           <li><a href="https://github.com/ferdjoukh/LaTeX/blob/master/CV2/pdf/CV-Adel-Ferdjoukh.pdf" target="_blank"><img src="img/uk.png" width="25" alt="English"/> English</a></li>' >> $menu
    echo '           <li><a href="https://github.com/ferdjoukh/LaTeX/raw/master/CV/pdf/CVFerdjoukh_en.pdf" target="_blank"><img src="img/uk.png" width="25" alt="English"/> English (Detailed)</a></li>' >> $menu
    echo '           <li><a href="https://github.com/ferdjoukh/LaTeX/raw/master/CV/pdf/CVFerdjoukh.pdf" target="_blank"><img src="img/fr.png" width="25" alt="French"/> Français (Detailed)</a></li>' >> $menu

echo '            </ul>' >> $menu
echo '           </li>' >> $menu

############################
#
# Research
#
###########################
echo '' >> $menu
echo '           <li class="dropdown">' >> $menu
 echo '           <a href="#" class="dropdown-toggle" data-toggle="dropdown">Research <b class="caret"></b></a>' >> $menu
  echo '           <ul class="dropdown-menu">' >> $menu

	echo "         	  <li><a href=\"research.html\">Quick story</a></li>" >> $menu
    echo "            <li><a href=\"https://github.com/ferdjoukh/grimm\" target=\"_blank\">Grimm</a></li>" >> $menu
    echo "            <li><a href=\"https://github.com/ferdjoukh/comodi\" target=\"_blank\">Comodi</a></li>" >> $menu
    echo "            <li><a href=\"https://github.com/ferdjoukh/tiwizi\" target=\"_blank\">Tiwizi</a></li>" >> $menu
    echo "            <li><a href=\"https://github.com/ferdjoukh/data-MDE\" target=\"_blank\">Data</a></li>" >> $menu
  
echo '            </ul>' >> $menu
echo '           </li>' >> $menu

echo '           <li><a href="publications.html">Publications</a></li>' >> $menu
echo '           <li><a href="teaching.html">Teaching</a></li>' >> $menu
echo '         </ul>' >> $menu
echo '       </div><!--/.nav-collapse -->' >> $menu
echo '     </div>' >> $menu
echo '   </nav>' >> $menu