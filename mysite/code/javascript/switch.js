// JavaScript Document

// Generate a Random Number 
var randomnumber = Math.round(Math.random()*3);

// Select a movie and execute the corresponding function 
if (randomnumber == 1)

{movie1();}

else if (randomnumber == 2)

{movie2();}

else {movie3();}

//Functions to write out the correct flash movie resource.

function movie1(){ 
document.write("<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0\" width=\"770\" height=\"150\"><param name=movie value=\"/flash/Preloader4'\"><param name=loop value=false><param name=quality value=high><embed src=\"Preloader4.swf\" quality=high pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width=\"300\" height=\"200\"></embed></object>") 
}

function movie2(){ 
document.write("<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0\" width=\"770\" height=\"150\"><param name=movie value=\"/flash/Preloader.swf\"><param name=loop value=false><param name=quality value=high><embed src=\"Preloader4.swf\" quality=high pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width=\"300\" height=\"200\"></embed></object>") 
}

function movie3(){ 
document.write("<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0\" width=\"770\" height=\"150\"><param name=movie value=\"../flash/banner3.swf\"><param name=loop value=false><param name=quality value=high><embed src=\"movie3.swf\" quality=high pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width=\"300\" height=\"200\"></embed></object>") 
}

