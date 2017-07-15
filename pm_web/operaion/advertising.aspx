<%@ Page Title="" Language="C#" MasterPageFile="~/operaion/operaion.Master" AutoEventWireup="true" CodeBehind="advertising.aspx.cs" Inherits="pm_web.operaion.advertising" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="themes/js-image-slider.css" rel="stylesheet" />
    <script src="themes/js-image-slider.js"></script>
    <link href="generic.css" rel="stylesheet" />
     <div style="direction: ltr">
    <div id="sliderFrame">
        <div id="slider" style ="position:absolute; margin:100px" >
            <asp:Repeater ID="Repeater1" runat="server"  >
                <ItemTemplate>
                   <%-- <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("image_pm") %>'  />--%>
                 
                    <asp:Image ID="Image1" runat="server"   ImageUrl='<%#Eval("image_pm") %>' AlternateText='<%#Eval("report") %>' BorderStyle="Dotted" ImageAlign="AbsBottom" /> 
                    <%-- <img src='<%Eval %>'  onclick="" />--%>
                    
                </ItemTemplate>
                
               
                   
            </asp:Repeater>
           
                 
           
        <%--    <a href="http://www.menucool.com/javascript-image-slider" target="_blank">--%>
               <%-- <img src="images/image-slider-1.jpg" alt="Welcome to Menucool.com" />
            </a>
          
            <img src="images/image-slider-3.jpg" alt="" />
            <img src="images/image-slider-4.jpg" alt="#htmlcaption" />
            <img src="images/image-slider-5.jpg" />--%>
        </div>
       
         </div>  </div>

</asp:Content>
