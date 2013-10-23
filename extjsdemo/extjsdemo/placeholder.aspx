<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeholder.aspx.cs" Inherits="extjsdemo._fongface" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       *{margin: 0;padding:0;}
body {margin: 0;padding: 20px 50px;}
/*CSS Tabs style*/
#cssTabs {
   position: relative;
   width: 695px;
   height: 200px;
   margin: 0 auto;
   margin-bottom:10px;
}
.tabHead {
   font-weight: normal;
   padding: 0px;
   height: 36px;
   line-height: 36px;
   text-align: center;
   border: 1px solid #eee;
   border-width: 1px 1px 0;
   -moz-border-radius: 5px 5px 0 0;
   -webkit-border-radius: 5px 5px 0 0;
   border-radius: 5px 5px 0 0;
   width: 90px;
   position: absolute;
   left: 0;
   top: 0;
   background: #eee;
  cursor: pointer;
}
.tabContent {
  padding-top:10px;
  padding-left:20px;
   background: #fff;
   border: 1px solid #eee;
   position: absolute;
   top: 36px;
   left: 0;
   height: 160px;
   width: 100%;
   opacity: 0;
   filter: alpha(opacity=0); 
   -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";  
}
#tab1 .tabHead {
   z-index: 3;
}
#tab2 .tabHead {
   left: 105px;
   z-index: 1;
}
     
#tab3 .tabHead {
   left: 210px;
   z-index: 1;
}
   
#tab1 .tabContent {
   z-index: 2;
    opacity: 1;
    filter: alpha(opacity=100); 
    -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)"; 
}
     
#tab1:hover h3,
#tab1:focus h3,
#tab1:active h3,
#tab2:hover h3,
#tab2:focus h3,
#tab2:active h3,
#tab3:hover h3,
#tab3:focus h3,
#tab3:active h3 {
  z-index: 4;
  font-weight: bold;
  background-color:#fff;
}
        
#tab1:hover .tabContent, 
#tab1:focus .tabContent,
#tab1:active .tabContent,
#tab2:hover .tabContent, 
#tab2:focus .tabContent,
#tab2:active .tabContent,
#tab3:hover .tabContent, 
#tab3:focus .tabContent,
#tab3:active .tabContent {            
   z-index: 3;
   opacity: 1;
   filter: alpha(opacity=100); 
   -ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=100)"; 
}


/* clips */
#clips{background: #eee;
  border-width: 1px;
  border-style: solid;
  border-color: #f5f5f5 #e5e5e5 #ccc;
  border-radius: 5px;
  box-shadow: 0 0 2px rgba(0,0,0,.2);
  overflow: hidden;
  width: 100%;
}
#clips li{ float:left;}
#clips a{
  padding: .7em 1em .7em 2em;
  float: left;
  text-decoration: none;
  color: #444;
  position: relative;
  text-shadow: 0 1px 0 rgba(255,255,255,.5);
  background-color: #ddd;
  background-image: linear-gradient(to right, #f5f5f5, #ddd);  
}
#clips li:first-child a{
  padding-left: 1em;
  border-radius: 5px 0 0 5px;
}

#clips a:hover{
  background: #fff;
}

#clips a::after,
#clips a::before{
  content: "";
  position: absolute;
  top: 50%;
  margin-top: -1.5em;   
  border-top: 1.5em solid transparent;
  border-bottom: 1.5em solid transparent;
  border-left: 1em solid;
  right: -1em;
}

#clips a::after{ 
  z-index: 2;
  border-left-color: #ddd;  
}

#clips a::before{
  border-left-color: #ccc;  
  right: -1.1em;
  z-index: 1; 
}

#clips a:hover::after{
  border-left-color: #fff;
}

#clips .current,
#clips .current:hover{
  font-weight: bold;
  background: none;
}

#clips .current::after,
#clips .current::before{
  content: normal;  
}


    </style>
</head>
<body>
  <div id="cssTabs">
  <div id="tab1" >
     <h3 class="tabHead">Tab1</h3>
     <div class="tabContent">Content1</div>
  </div>      
  <div id="tab2">
     <h3 class="tabHead">Tab2</h3>
     <div class="tabContent">Content2</div>
  </div>
               
  <div id="tab3" >
     <h3 class="tabHead">Tab3</h3>
     <div class="tabContent">Content3</div>
  </div>           
</div>
<div><span style=" width:16px; height:16px; line-height:16px; display:inline-block; font-size:36px; text-align:center;">•</span><span>◆</span><span>★</span><span>❤</span><span>▼</span><span>卍</span></div>

    <form runat="server" action="" style="text-align:center;"> <p><asp:Label  ID="number" runat="server"></asp:Label>   <asp:Label  ID="Label4" runat="server"></asp:Label>
     <asp:Label  ID="Label1" runat="server"></asp:Label>   <asp:Label  ID="Label2" runat="server"></asp:Label>   <asp:Label  ID="Label3" runat="server"></asp:Label></p></form>
  <div style="width:100%; height:32px;">
  <ul id="clips">
  <li><a></a></li>
   <li><a></a></li>
    <li><a></a></li>
  </ul>
  </div> 
</body>
</html>
