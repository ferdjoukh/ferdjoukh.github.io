#!/bin/bash

header='../tmp-html/header'
:> $header

echo '' >> $header

echo '  <div class="page-header">' >> $header
echo '		<img src="img/ban1.jpg" width="100%" class="img-header" />' >> $header
echo '  	<div class="in">' >> $header
echo '      	<a href="" class="btn btn-lg btn-pyta"><span class="glyphicon glyphicon-home"></span></a>' >> $header
echo '      	<a href="https://github.com/ferdjoukh" target="_blank" class="btn btn-lg btn-pyta"><img src="img/gitw.png" alt="github" width="25px;"/> Github</a>' >> $header
echo '      	<button class="btn btn-lg btn-pyta" data-toggle="popover" data-placement="bottom" data-container="body" data-content="email: ferdjoukh@gmail.com">Contact</button>' >> $header
echo '  	</div>' >> $header

echo '  </div>' >> $header



echo '' >> $header
