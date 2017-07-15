<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Site1.Master" AutoEventWireup="true" CodeBehind="adver.aspx.cs" Inherits="pm_web.manager.adver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="themes/1/js-image-slider.css" rel="stylesheet" type="text/css" />
    <link href="themes/js-image-slider.css" rel="stylesheet" />
    <script src="themes/1/js-image-slider.js" type="text/javascript"></script>
    <script src="themes/js-image-slider.js"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <link href="generic.css" rel="stylesheet" />
    <link href="generic.css" rel="stylesheet" />
  
    <div id="sliderFrame">
        <div id="slider" style ="position:absolute; margin:100px" >
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                   
               <a href="../general/WebForm1.aspx">     <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image_pm")%>'  AlternateText='<%#Eval("titel") %>' ImageAlign="Middle"  /></a>
                    
                </ItemTemplate>
                
               
                   
            </asp:Repeater>
           
                 
           
           <%-- <a href="http://www.menucool.com/javascript-image-slider" target="_blank">
                <img src="images/image-slider-1.jpg" alt="Welcome to Menucool.com" />
            </a>
            <img src="images/image-slider-2.jpg" />
            <img src="images/image-slider-3.jpg" alt="" />
            <img src="images/image-slider-4.jpg" alt="#htmlcaption" />
            <img src="images/image-slider-5.jpg" />--%>
            <br />
            <br />
            <br /> <%-- <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("report") %>'></asp:Label>
            </ItemTemplate>--%>
      <%--  </asp:Repeater>--%>
            <br />
            <br />
            <br />
            <br />
        </div>
         </div>
        <br />
      <br />
   
            <br />
      <br />
            <br />
            <br />
     <br />
           <h2 style="direction: ltr; margin-left:80px"> Chat about Report Ratio</h2>
               <div style="margin-left:100px">
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [name], [The ratio] AS The_ratio FROM [manager]"></asp:SqlDataSource>
               <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="617px">
                   <Series>
                       <asp:Series Name="Series1" XValueMember="name" YValueMembers="The_ratio"></asp:Series>
                   </Series>
                   <ChartAreas>
                       <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                   </ChartAreas>
               </asp:Chart></div>
   

    
</asp:Content>
