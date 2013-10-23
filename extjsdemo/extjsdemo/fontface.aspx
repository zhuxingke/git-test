﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fontface.aspx.cs" Inherits="extjsdemo.fontface" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<style type="text/css">
       @font-face {
  font-family: 'FontAwesome';
  src: url('font/fontawesome-webfont.eot');
  src: url('font/fontawesome-webfont.eot?#iefix') format('embedded-opentype'), url('../font/fontawesome-webfont.woff') format('woff'), url('../font/fontawesome-webfont.ttf') format('truetype'), url('../font/fontawesome-webfont.svgz#FontAwesomeRegular') format('svg'), url('../font/fontawesome-webfont.svg#FontAwesomeRegular') format('svg');
  font-weight: normal;
  font-style: normal;
}
/* sprites.less reset */
[class^="icon-"], 
[class*=" icon-"] {
  display: inline;
  width: auto;
  height: auto;
  line-height: inherit;
  vertical-align: baseline;
  background-image: none;
  background-position: 0% 0%;
  background-repeat: repeat;
}
[class^="icon-"]:before, 
[class*=" icon-"]:before {
  font-family: FontAwesome;
  font-weight: normal;
  font-style: normal;
  display: inline-block;
  text-decoration: inherit;
}
/*  Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
    readers do not read off random characters that represent icons */
.icon-glass:before              { content: "\f000"; }
.icon-music:before              { content: "\f001"; }
.icon-search:before             { content: "\f002"; }
.icon-envelope:before           { content: "\f003"; }
.icon-heart:before              { content: "\f004"; }
.icon-star:before               { content: "\f005"; }
.icon-star-empty:before         { content: "\f006"; }
.icon-user:before               { content: "\f007"; }
.icon-film:before               { content: "\f008"; }
.icon-th-large:before           { content: "\f009"; }
.icon-th:before                 { content: "\f00a"; }
.icon-th-list:before            { content: "\f00b"; }
.icon-ok:before                 { content: "\f00c"; }
.icon-remove:before             { content: "\f00d"; }
.icon-zoom-in:before            { content: "\f00e"; }

.icon-zoom-out:before           { content: "\f010"; }
.icon-off:before                { content: "\f011"; }
.icon-signal:before             { content: "\f012"; }
.icon-cog:before                { content: "\f013"; }
.icon-trash:before              { content: "\f014"; }
.icon-home:before               { content: "\f015"; }
.icon-file:before               { content: "\f016"; }
.icon-time:before               { content: "\f017"; }
.icon-road:before               { content: "\f018"; }
.icon-download-alt:before       { content: "\f019"; }
.icon-download:before           { content: "\f01a"; }
.icon-upload:before             { content: "\f01b"; }
.icon-inbox:before              { content: "\f01c"; }
.icon-play-circle:before        { content: "\f01d"; }
.icon-repeat:before             { content: "\f01e"; }

/* \f020 is not a valid unicode character. all shifted one down */
.icon-refresh:before            { content: "\f021"; }
.icon-list-alt:before           { content: "\f022"; }
.icon-lock:before               { content: "\f023"; }
.icon-flag:before               { content: "\f024"; }
.icon-headphones:before         { content: "\f025"; }
.icon-volume-off:before         { content: "\f026"; }
.icon-volume-down:before        { content: "\f027"; }
.icon-volume-up:before          { content: "\f028"; }
.icon-qrcode:before             { content: "\f029"; }
.icon-barcode:before            { content: "\f02a"; }
.icon-tag:before                { content: "\f02b"; }
.icon-tags:before               { content: "\f02c"; }
.icon-book:before               { content: "\f02d"; }
.icon-bookmark:before           { content: "\f02e"; }
.icon-print:before              { content: "\f02f"; }

.icon-camera:before             { content: "\f030"; }
.icon-font:before               { content: "\f031"; }
.icon-bold:before               { content: "\f032"; }
.icon-italic:before             { content: "\f033"; }
.icon-text-height:before        { content: "\f034"; }
.icon-text-width:before         { content: "\f035"; }
.icon-align-left:before         { content: "\f036"; }
.icon-align-center:before       { content: "\f037"; }
.icon-align-right:before        { content: "\f038"; }
.icon-align-justify:before      { content: "\f039"; }
.icon-list:before               { content: "\f03a"; }
.icon-indent-left:before        { content: "\f03b"; }
.icon-indent-right:before       { content: "\f03c"; }
.icon-facetime-video:before     { content: "\f03d"; }
.icon-picture:before            { content: "\f03e"; }

.icon-pencil:before             { content: "\f040"; }
.icon-map-marker:before         { content: "\f041"; }
.icon-adjust:before             { content: "\f042"; }
.icon-tint:before               { content: "\f043"; }
.icon-edit:before               { content: "\f044"; }
.icon-share:before              { content: "\f045"; }
.icon-check:before              { content: "\f046"; }
.icon-move:before               { content: "\f047"; }
.icon-step-backward:before      { content: "\f048"; }
.icon-fast-backward:before      { content: "\f049"; }
.icon-backward:before           { content: "\f04a"; }
.icon-play:before               { content: "\f04b"; }
.icon-pause:before              { content: "\f04c"; }
.icon-stop:before               { content: "\f04d"; }
.icon-forward:before            { content: "\f04e"; }

.icon-fast-forward:before       { content: "\f050"; }
.icon-step-forward:before       { content: "\f051"; }
.icon-eject:before              { content: "\f052"; }
.icon-chevron-left:before       { content: "\f053"; }
.icon-chevron-right:before      { content: "\f054"; }
.icon-plus-sign:before          { content: "\f055"; }
.icon-minus-sign:before         { content: "\f056"; }
.icon-remove-sign:before        { content: "\f057"; }
.icon-ok-sign:before            { content: "\f058"; }
.icon-question-sign:before      { content: "\f059"; }
.icon-info-sign:before          { content: "\f05a"; }
.icon-screenshot:before         { content: "\f05b"; }
.icon-remove-circle:before      { content: "\f05c"; }
.icon-ok-circle:before          { content: "\f05d"; }
.icon-ban-circle:before         { content: "\f05e"; }

.icon-arrow-left:before         { content: "\f060"; }
.icon-arrow-right:before        { content: "\f061"; }
.icon-arrow-up:before           { content: "\f062"; }
.icon-arrow-down:before         { content: "\f063"; }
.icon-share-alt:before          { content: "\f064"; }
.icon-resize-full:before        { content: "\f065"; }
.icon-resize-small:before       { content: "\f066"; }
.icon-plus:before               { content: "\f067"; }
.icon-minus:before              { content: "\f068"; }
.icon-asterisk:before           { content: "\f069"; }
.icon-exclamation-sign:before   { content: "\f06a"; }
.icon-gift:before               { content: "\f06b"; }
.icon-leaf:before               { content: "\f06c"; }
.icon-fire:before               { content: "\f06d"; }
.icon-eye-open:before           { content: "\f06e"; }

.icon-eye-close:before          { content: "\f070"; }
.icon-warning-sign:before       { content: "\f071"; }
.icon-plane:before              { content: "\f072"; }
.icon-calendar:before           { content: "\f073"; }
.icon-random:before             { content: "\f074"; }
.icon-comment:before            { content: "\f075"; }
.icon-magnet:before             { content: "\f076"; }
.icon-chevron-up:before         { content: "\f077"; }
.icon-chevron-down:before       { content: "\f078"; }
.icon-retweet:before            { content: "\f079"; }
.icon-shopping-cart:before      { content: "\f07a"; }
.icon-folder-close:before       { content: "\f07b"; }
.icon-folder-open:before        { content: "\f07c"; }
.icon-resize-vertical:before    { content: "\f07d"; }
.icon-resize-horizontal:before  { content: "\f07e"; }

.icon-bar-chart:before          { content: "\f080"; }
.icon-twitter-sign:before       { content: "\f081"; }
.icon-facebook-sign:before      { content: "\f082"; }
.icon-camera-retro:before       { content: "\f083"; }
.icon-key:before                { content: "\f084"; }
.icon-cogs:before               { content: "\f085"; }
.icon-comments:before           { content: "\f086"; }
.icon-thumbs-up:before          { content: "\f087"; }
.icon-thumbs-down:before        { content: "\f088"; }
.icon-star-half:before          { content: "\f089"; }
.icon-heart-empty:before        { content: "\f08a"; }
.icon-signout:before            { content: "\f08b"; }
.icon-linkedin-sign:before      { content: "\f08c"; }
.icon-pushpin:before            { content: "\f08d"; }
.icon-external-link:before      { content: "\f08e"; }

.icon-signin:before             { content: "\f090"; }
.icon-trophy:before             { content: "\f091"; }
.icon-github-sign:before        { content: "\f092"; }
.icon-upload-alt:before         { content: "\f093"; }
.icon-lemon:before              { content: "\f094"; }
    </style>--%>
</head>
<body>
    <div>
   <div class="icon-glass"></div>
  
    </div> 
     <span class="icon-align-justify"></span>
   <i class="icon-arrow-right"></i>
   <label class="icon-arrow-up"></label>
</body>
</html>
