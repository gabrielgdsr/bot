// ==UserScript==
// @name           PonyDJ
// @namespace      http://www.plug.dj/
// @description    Ponifies plug.dj
// @include        http://www.plug.dj/*
// ==/UserScript==

function addGlobalStyle(css){
	var head, style;
	head = document.getElementsByTagName('head')[0];
	if(!head){
		return;
	}
	style = document.createElement('style');
	style.type = 'text/css';
	style.innerHTML = css;
	head.appendChild(style);
}

//changes the room background (alternate, this keeps the original size, comment out to disable)
//addGlobalStyle('html{background: url("http://ubuntuone.com/15fOcQ9OvcZu00uItgoar4") no-repeat scroll center top #424242;'); //main background

//change the logo
addGlobalStyle('#logo, #logo {background-image: url("http://i.imgur.com/NJaZw.png");min-height:33px;min-width:131px;}');

//change create room button
addGlobalStyle('#create-room-button, #create-room-button {background-image: url("http://i.imgur.com/oW6ir.png");min-height:33px;min-width:131px;}'); 

//hide the upper bg image (clashes with main bg)
addGlobalStyle('#room-wheel, #room-wheel {background-image: url("");}');

//changes the "points" icon
addGlobalStyle('#user-points, #user-points {background-image: url("http://www.zeldawiki.org/images/e/e6/SS_Green_Rupee.png");max-height:25px;background-size: 100% 100%;max-width:20px;}');

//changes the "fans" icon
addGlobalStyle('#user-fans, #user-fans {background-image: url("http://i.imgur.com/2trwR.png");max-height:25px;max-width:20px;}'); 

//join DJ button
//addGlobalStyle('#button-dj-play.button-dj, #button-dj-play.button-dj {background-image: url("http://i.imgur.com/25rO8.png")!important;}');

//quit DJ button
//addGlobalStyle('#button-dj-quit.button-dj, #button-dj-quit.button-dj {background-image: url("http://i.imgur.com/u9vac.png")!important;max-height:56px;}');

//join waitlist button
//addGlobalStyle('#button-dj-waitlist-join.button-dj, #button-dj-waitlist-join.button-dj {background-image: url("http://i.imgur.com/tyDif.png")!important;}');

//leave waitlist button
//addGlobalStyle('#button-dj-waitlist-leave.button-dj, #button-dj-waitlist-leave.button-dj {background-image: url("http://i.imgur.com/pYUJE.png")!important;}');

//changes the avatar image in the plug.dj lobby
addGlobalStyle('#user-image, #user-image {background-image: url("http://www.bronyland.com/wp-content/uploads/2011/09/fluttershy_avatar_067.png")!important;background-size:50px 50px!important;}');

//changes the avatar image in the plug.dj rooms 
addGlobalStyle('#button-user-avatar, #button-user-avatar {background-image: url("http://www.bronyland.com/wp-content/uploads/2011/09/fluttershy_avatar_067.png")!important;background-size:50px 50px!important;}');

//if you want to change the font, uncomment this part and edit with the font you want, google "font css" or something like that for the codes.
//addGlobalStyle("* {" + "font-family:Cambria,'Times New Roman','Nimbus Roman No9 L','Freeserif',Times,serif; !important;" + "}"); //for font changing

//to change the DJ console, uncomment this and add your own custom URL. I've got no good ideas atm, but feel free to try stuff out :)
//addGlobalStyle('#dj-console, #dj-console {background-image: url("http://i.imgur.com/oW6ir.png");min-height:33px;min-width:131px;}'); //change create room button

//changes the room background (stretches image to window, uncomment to enable)
addGlobalStyle('html{background: url("http://ubuntuone.com/15fOcQ9OvcZu00uItgoar4");background-size: cover;background-repeat: no-repeat;max-height:100%;');

//hides the tan arch (doesn't work)
addGlobalStyle('#room-arch, #room-arch {background-image: url("");}');
addGlobalStyle('#room-arch-hit, #room-arch-hit {background-image: url("");}');


//THE WORD REPLACEMENT CODE BELOW IS NOT MINE, IT BELONGS TO JOE SIMMONS

var words = {
// Syntax: 'Search word' : 'Replace word',
"points" : "BITS",
"USERS" : "PONIES",
"WOOT!" : "BROHOOF!",
"Now Playing" : "DJ-Pon3's listening to",
"Time Remaining" : "Clock is ticking...",
"Volume" : "LOUDER *yay*",
"Current DJ" : "Who's Vinyl Scratchin'", 
"":""};

String.prototype.prepareRegex = function() {
return this.replace(/([\[\]\^\&\$\.\(\)\?\/\\\+\{\}\|])/g, "\\$1");
};

function isOkTag(tag) {
return (",pre,blockquote,code,input,button,textarea".indexOf(","+tag) == -1);
}

var regexs=new Array(),
	replacements=new Array();
for(var word in words) {
if(word != "") {
regexs.push(new RegExp("\\b"+word.prepareRegex().replace(/\*/g,'[^ ]*')+"\\b", 'gi'));
replacements.push(words[word]);
}
}

var texts = document.evaluate(".//text()[normalize-space(.)!='']",document.body,null,6,null), text="";
for(var i=0,l=texts.snapshotLength; (this_text=texts.snapshotItem(i)); i++) {
	if(isOkTag(this_text.parentNode.tagName.toLowerCase()) && (text=this_text.textContent)) {
	for(var x=0,l=regexs.length; x<l; x++) {
	text = text.replace(regexs[x], replacements[x]);
	this_text.textContent = text;
	}
	}
}
