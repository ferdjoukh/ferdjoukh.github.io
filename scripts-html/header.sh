#!/bin/bash

header='../tmp-html/header'
:> $header

echo '' >> $header

echo '  <div class="page-header">' >> $header
echo '		<img src="img/ban1.jpg" alt="website banner" class="full-img img-header" />' >> $header
echo '  	<div class="in">' >> $header
echo '      	<a href="index.html" class="btn btn-lg btn-pyta"><span class="glyphicon glyphicon-home"></span></a>' >> $header
echo '      	<a href="https://github.com/ferdjoukh" target="_blank" class="btn btn-lg btn-pyta"><img src="img/gitw.png" alt="github" width="25"/> Github</a>' >> $header
echo '      	<button class="btn btn-lg btn-pyta" data-toggle="popover" data-placement="bottom" data-container="body" data-content="email: ferdjoukh@gmail.com">Contact</button>' >> $header
echo '  	</div>' >> $header

echo '  </div>' >> $header



echo '' >> $header
