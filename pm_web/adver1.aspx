<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adver1.aspx.cs" Inherits="pm_web.adver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction: ltr">
    <div id="sliderFrame">
        <div id="slider">
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                   
                    <asp:Image ID="Image1" runat="server"   ImageUrl='<%#Eval("image_pm") %>' AlternateText='<%#Eval("report") %>' />
                    
                </ItemTemplate>
                
               
                   
            </asp:Repeater>
           
                 
           
           <%-- <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
                <img src="images/image-slider-1.jpg" alt="Welcome to Menucool.com" />
            </a>
            <img src="images/image-slider-2.jpg" />
            <img src="images/image-slider-3.jpg" alt="" />
            <img src="images/image-slider-4.jpg" alt="#htmlcaption" />
            <img src="images/image-slider-5.jpg" />--%>
        </div>
        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
    </div>
    </div> 
        <br />
             <br />
        <marquee OnMouseOver='this.stop();'
OnMouseOut='this.start();'
direction='right'
scrollamount='5'>
           <asp:Repeater ID ="rp2" runat="server">
 <ItemTemplate>
                 <asp:Label ID="Label1" runat="server" Text='<%#Eval("report") %>' >

                 </asp:Label></ItemTemplate>
           </asp:Repeater></marquee>
    </form>
</body>
</html>
