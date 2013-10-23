<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="extjsdemo._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>無題のページ</title>
    <style type="text/css">
    *{ margin:0; padding:0;}
    body{ text-align:center;}
    .button {
   display: inline-block;
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.3);
	-webkit-border-radius: .5em; 
	-moz-border-radius: .5em;
	border-radius: .5em;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);

    }
    .button:active{
    position: relative;
	top: 1px;/*按下时效果 向下凹陷*/

    }
    .button:hover{text-decoration: none;
}
   
.orange {
	color: #fef4e9;
	border: solid 1px #da7c0c;
	background: #f78d1d;
	background: -webkit-gradient(linear, left top, left bottom, from(#faa51a), to(#f47a20));
	background: -moz-linear-gradient(top,  #faa51a,  #f47a20);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#faa51a', endColorstr='#f47a20');
}
.orange:hover {
	background: #f47c20;
	background: -webkit-gradient(linear, left top, left bottom, from(#f88e11), to(#f06015));
	background: -moz-linear-gradient(top,  #f88e11,  #f06015);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f88e11', endColorstr='#f06015');
}
.orange:active {
	color: #fcd3a5;
	background: -webkit-gradient(linear, left top, left bottom, from(#f47a20), to(#faa51a));
	background: -moz-linear-gradient(top,  #f47a20,  #faa51a);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#f47a20', endColorstr='#faa51a');
}

    #left ul{list-style-type:none; overflow:hidden;}
     #left ul li{height:20px; width:265px; margin:5px auto 5px; background-color:Orange;}
     #left ul li+li{background-color:red; }
    a { color:red;margin-left:20px; }
    a:link{ color:blue;}
    a:visited{ color:black;}
    a:hover{ color:orange;}
    
    
    
    /* 面包屑 */
    #bread-crumb{ list-style-type:none; background-color:#eee;}
    #bread-crumb li{ float:left; }
     #bread-crumb li a{   position:relative; padding:12px 16px 12px 32px;}
     #bread-crumb a::after,
#bread-crumb a::before{
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -24px;   
  border-top: 24px solid transparent;
  border-bottom: 24px solid transparent;
  border-left: 16px solid;
  right: -16px;
}

#bread-crumb a::after{ 
  z-index: 2;
  border-left-color: #ddd;  
}

#bread-crumb a::before{
  border-left-color: #ccc;  
  right: -18px;
  z-index: 1; 
}
    </style>
    <link type="text/css" rel="Stylesheet" href="ext-4.2.1.883/resources/css/ext-all.css" />
   <script type="text/javascript" src="ext-4.2.1.883/ext-all-debug.js"></script>
   <script type="text/javascript" src="jquery-1.4.1.min.js"></script>
  <%-- <script type="text/javascript" src="ext-4.2.1.883/src/button/Button.js"></script>--%>
   <script type="text/javascript" src="app.js"></script>
   <script type="text/javascript">
       Ext.onReady(function () {
           var tip = Ext.create('Ext.tip.ToolTip', {
               target: 'clickme',
               html: 'Press this button to clear the form'
           });
       });
   </script>
   



  

</head>
<body>
   <div style=" width:1000px; height:auto; margin-right:auto; margin-left:auto;" >
       <div id="left" style=" width:265px; float:left; height:500px; border:solid 1px red;">
   <ul >
   <li ></li>
    <li></li>
     <li></li>
     <li></li>
     <li></li>
     <li></li>
     <li></li>
     
   </ul>
 <div><a href="#">click me...</a></div>
   </div>
       <div id="right" style=" width:695px; height:500px; float:right; text-align:left; padding:10px 5px; background-color:Gray;">
             <div style=" border:solid 1px #A9A9A9; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">
             <input  class="button orange" id="clickme" type="button" onclick="javascript:Ext.Msg.alert('提示','来了');" value="Hello" />
             <span>1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111</span>
       </div>
             <div style=" height:200px; background-color:Black; padding:0; position:relative; margin-bottom:10px; border-radius:10px;">
           <span style=" border-top:solid 10px black; border-left:solid 10px transparent; border-right:solid 10px transparent; position:absolute; top:200px; left:20px;"></span>
       </div>
       <div id="adiv"><a href="http://www.baidu.com">1111</a><a href="http://www.baidu.com">2222</a><a href="http://www.baidu.com">3333</a><a href="http://www.baidu.com">4444</a><a href="http://www.baidu.com">5555</a><a href="http://www.baidu.com">6666</a><a href="http://www.baidu.com">7777</a><a href="http://www.baidu.com">8888</a></div>
       <div style=" vertical-align:middle;"> <input type="text" /><input type="button" value="Search" /></div>
       <ul id="bread-crumb">
       <li><a></a></li>
       <li><a></a></li>
       </ul>
   </div> 
       <div style="clear:both;"></div>
   </div> 
   
</body>
</html>
