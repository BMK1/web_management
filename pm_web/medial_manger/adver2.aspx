<%@ Page Title="" Language="C#" MasterPageFile="~/medial_manger/medal.Master" AutoEventWireup="true" CodeBehind="adver2.aspx.cs" Inherits="pm_web.medial_manger.adver2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="themes/js-image-slider.css" rel="stylesheet" />
    <script src="themes/js-image-slider.js"></script>
    <link href="generic.css" rel="stylesheet" />
        <div style="direction: ltr;">
    <div id="sliderFrame" style ="margin-left :270px;margin-bottom:90px;width:1000px"><%--style ="margin-left :300px"--%>
        <div id="slider"  style ="position:absolute; margin-left :370px;margin-top:100px;height:400px;width:900px;"> >
         
            <%--<asp:Image ID="Image2" Width="400px" Height ="400px" ImageUrl="~/8.jpg" runat="server" />--%>
            
              <asp:Repeater ID="Repeater1" runat="server"  >
                <ItemTemplate>
                   <%-- <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("image_pm") %>' BorderStyle="Dotted" ImageAlign="AbsBottom"  AlternateText='<%#Eval("report") %>'/>--%>
                 <asp:Image ID="Image1" runat="server"   ImageUrl='<%#Eval("image_pm") %>' BorderStyle="Dotted" ImageAlign="AbsBottom" /> 
                    <%--<asp:Image ID="Image1" runat="server" Width="400px" Height ="400px"   ImageUrl='<%#Eval("image_pm") %>' AlternateText='<%#Eval("report") %>'  ImageAlign="Middle" GenerateEmptyAlternateText="False" DescriptionUrl="~/login.aspx" BorderStyle="Dotted" /> --%>
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

        <div id="htmlcaption" style="display: none;">
            <em>HTML</em> caption. Link to <a href="http://www.google.com/">Google</a>.
        </div>
  
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [name], [The ratio] AS The_ratio FROM [manager]"></asp:SqlDataSource>
    <br />
      <br />
    <br />

    <h2 style="margin-left:290px">Chart show the Report Ratio By The PM </h2>
    <div style="margin-left:190px">
    <asp:Chart ID="Chart1" runat="server" Width="748px" DataSourceID="SqlDataSource1">
        <Series>
            <asp:Series Name="Series1" ChartType="StackedColumn" XValueMember="name" YValueMembers="The_ratio"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
        <br />
        <br />
        <br />
        <br />
</div>
</asp:Content>
