﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pm_web.Admin1.WebForm1" %>

<!DOCTYPE html> <!-- The new doctype -->
<html>
    <head>
       <%-- <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    
        <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
        <style>
            #mar:hover{
                background-color:cornflowerblue
                    
            }
            #mar{
                font-family:'Franklin Gothic Book'
                   
            }
            #mar:checked{

            }
            #Button4{
              style="border-style: inherit";
                      border-width: thick;
                       width: 98px;
                        color: #FF6600;
                        font-family: 'Tekton Pro'; 
                                           text-decoration:blink;
            }
        </style>
        
        <title>Admin page</title>
        
        <link rel="stylesheet" type="text/css" href="styles.css" />
        <link href="styles.css" rel="stylesheet" />
       
        
        <!-- Internet Explorer HTML5 enabling code: -->
        
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        
        <style type="text/css">
        .clear {
          zoom: 1;
          display: block;
                width: 1149px;
            }
        </style>

        
        <![endif]-->
        
    </head>
    
    <body>
    	<form runat="server">
    	<section id="page"> <!-- Defining the #page section with the section tag -->
    
            <header> <!-- Defining the header section of the page with the appropriate tag -->
          <%-- <button type="button" id="mar" class="btn btn-default" onclick="~/login.aspx" style="border-style: inherit; border-width: thick; margin-left:991px; width: 98px; color: #FF6600; font-family: 'Tekton Pro'; text-decoration: blink; font-size: x-large; height: 50px;">logout</button>--%> <asp:Button ID="Button4"  class="btn btn-default"   runat="server" Text="Logout" OnClick="Button4_Click" Width="138px" />
                <hgroup>
                   <%-- <h1>Your Logo</h1>--%>
                    
                    <h3>admin page</h3>
                </hgroup>
                 
                                
                <nav class="clear"> <!-- The nav link semantically marks your main site navigation -->
                    <ul>
                        <li><a href="#article1">Registrion</a></li>
                        <li><a href="#article2">PM </a></li>
                        <li><a href="#article3">Middel</a></li>
                        <li><a href="#article4">Funtional</a></li>
                        
                      
                        
                    </ul>
                   
                </nav>
                
            
            </header>
            
            <section id="articles"> <!-- A new section with the articles -->

				<!-- Article 1 start -->

                <div class="line"></div>  <!-- Dividing line -->
                
                <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h2>Registrion</h2>
                    
                    <div class="line"></div>
                    
                    <div  >
                   <%-- class="articleBody clear"--%>
                    	<div>    <asp:GridView ID="GridView1" runat="server"  AutoGenerateDeleteButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" Width="537px" AllowPaging="True" AllowSorting="True" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="16px" AllowCustomPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="6"  BorderStyle="Solid" CellSpacing="2" Font-Names="Tahoma" ForeColor="Black" >
    <Columns>
        <asp:TemplateField HeaderText="add ">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="Add" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" BorderWidth="5px" />
                            <PagerSettings PageButtonCount="5" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" BorderWidth="10px" />
    <SortedAscendingHeaderStyle BackColor="#808080" Width="7px" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>  </div>
                        <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [register].[id]
      ,[name]
      ,[phone]
      ,[email]
      ,[certificate]
      ,[expeirence_years] as [expeirence years]
      ,[login].[type] as [user type]
      ,[gender].gender1 as [gender]
     
  FROM [pm].[dbo].[register] inner join gender on([gender_id]=gender.id) inner join [login] on([manager_type]=[login].[id]) where ch=0
      " UpdateCommand="update register set name=@name, phone=@phone,email=@email,[certificate]=@certificate,expeirence_years=@expeirence_years,manager_type=@manager_type where id=@id" DeleteCommand="delete from register where id=@id"></asp:SqlDataSource>
                        &nbsp;<div>&nbsp; <asp:TextBox ID="TextBox1" CssClass="text"  placeholder="Add Username" runat="server" ForeColor="Black" Visible="False" OnTextChanged="TextBox1_TextChanged" ></asp:TextBox>
                           <br />
                           <br />
                           &nbsp;
                           &nbsp;<asp:DropDownList ID="DropDownList1"  runat="server" ForeColor="Black" Height="33px" Visible="False" Width="148px" Font-Names="Sitka Small" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                               <asp:ListItem Value="-1">select type</asp:ListItem>
                               <asp:ListItem Value="1">admin</asp:ListItem>
                               <asp:ListItem Value="2">pm manamger</asp:ListItem>
                               <asp:ListItem Value="3">middle</asp:ListItem>
                               <asp:ListItem Value="4">functional</asp:ListItem>
                           </asp:DropDownList>
                           <br />
                           <br />
                        &nbsp;   <asp:TextBox ID="Textpas"  placeholder="Password"  runat="server" Visible="False" ForeColor="Black" ReadOnly="True" OnTextChanged="Textpas_TextChanged"></asp:TextBox>
<br />
                           <br />
                         &nbsp;  <asp:Button ID="Button2" runat="server" Text="Add account" Font-Names="SF Comic Script" ForeColor="Black" Visible="False" OnClick="Button2_Click" /> 
                           &nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Font-Names="Broadway" ForeColor="Black" Height="26px" Text="Send Email" Width="105px" OnClick="Button3_Click" Visible="False" />
                            <br />
                             
                       &nbsp; <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Ravie" ForeColor="#33CC33" Visible="False" OnLoad="Label1_Load"></asp:Label>
                             
                             <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" ForeColor="#FF6600" TextMode="MultiLine" Visible="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <%--<p>In this tutorial, we are creating a photo shoot effect with our just-released PhotoShoot jQuery plug-in. With it you can convert a regular div on the page into a photo shooting stage simulating a camera-like feel.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus quam quis nibh fringilla sit amet consectetur lectus malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac, sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt, metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec malesuada congue molestie. Suspendisse potenti. Vestibulum cursus congue sem et feugiat. Morbi quis elit odio. </p>--%>
                    </div></div>
                </article>
                
				<!-- Article 1 end -->
                

				<!-- Article 1 start -->

               
                
                <article id="article2"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
                    <h2>PM infromation</h2>
                    
                    <div class="line"></div>
                    
                    <div class="articleBody clear">
                    
                    	<%--<figure> <!-- The figure tag marks data (usually an image) that is part of the article -->
	                    	<a href="http://tutorialzine.com/2010/02/photo-shoot-css-jquery/"><img src="http://tutorialzine.com/img/featured/641.jpg" width="620" height="340" /></a>
                        </figure>--%>
                        
                        <%--<p>In this tutorial, we are creating a photo shoot effect with our just-released PhotoShoot jQuery plug-in. With it you can convert a regular div on the page into a photo shooting stage simulating a camera-like feel.</p>
                      
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus quam quis nibh fringilla sit amet consectetur lectus malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac, sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt, metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec malesuada congue molestie. Suspendisse potenti. Vestibulum cursus congue sem et feugiat. Morbi quis elit odio. </p>--%>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT * FROM middle" DeleteCommand="delete from middle where id=@id"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT * FROM [manager]"  DeleteCommand="delete from [manager] where id=@id " UpdateCommand="update [manager] set name=@name,report=@report,image_pm=@image_pm,[The ratio]=@The ratio,titel=@titel where id=@id "></asp:SqlDataSource>
                    
                    <div >
<asp:GridView ID="GridView7" runat="server" Width="858px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource7" style="margin-right: 0px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
     <Columns>
         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
         <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" >
         <ControlStyle Width="0px" />
         <HeaderStyle HorizontalAlign="Center" Width="50px" />
         </asp:BoundField>
         <asp:BoundField DataField="name" HeaderText="  Name" SortExpression="name" >
         <HeaderStyle HorizontalAlign="Center" Width="70px" />
         </asp:BoundField>
         <asp:BoundField DataField="report" HeaderText="Report" SortExpression="report" Visible="False" >
         <HeaderStyle HorizontalAlign="Center" Width="65px" />
         </asp:BoundField>
         <asp:BoundField DataField="image_pm" HeaderText="Image Url" SortExpression="image_pm" >
         <HeaderStyle HorizontalAlign="Center" Width="90px" />
         </asp:BoundField>
         <asp:BoundField DataField="Order" HeaderText="Order" SortExpression="Order" Visible="False" />
         <asp:BoundField DataField="The ratio" HeaderText="The Ratio" SortExpression="The ratio" >
         <HeaderStyle HorizontalAlign="Center" Width="100px" />
         </asp:BoundField>
         <asp:BoundField DataField="titel" HeaderText="Titel" SortExpression="titel" >
         <HeaderStyle HorizontalAlign="Center" Width="80px" />
         </asp:BoundField>
     </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                         </div>
                </article>

				<!-- Article 2 start -->

                <div class="line"></div>
                
                <article id="article3">
                    <h2>Middel infromation</h2>
                    
                    <div class="line"></div>
                    
                    <div class="articleBody clear">
                    	<%--<figure>
	                    	<a href="http://tutorialzine.com/2010/01/sweet-tabs-jquery-ajax-css/"><img src="http://tutorialzine.com/img/featured/633.jpg" width="620" height="340" /></a>
                        </figure>
                        
                        <p>Here we are making sweet AJAX-powered tabs with CSS3 and the newly released version 1.4 of jQuery.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus quam quis nibh fringilla sit amet consectetur lectus malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac, sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt, metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec malesuada congue molestie. Suspendisse potenti. Vestibulum cursus congue sem et feugiat. Morbi quis elit odio. </p>--%>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT * FROM [middle]" DeleteCommand="delete from [middle] where id=@id"></asp:SqlDataSource>
                    <br />
                  <%-- <h2 style="margin-left:-220px">middel infromation</h2>--%>
                    &nbsp;<asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource3" Height="177px" Width="591px" PageSize="5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" />
                            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="report" HeaderText="report" SortExpression="report" Visible="False" />
                        </Columns>
                    </asp:GridView></div>
                    <br />
                    <br />
                    
                </article>
                
				<!-- Article 2 end -->

				<!-- Article 3 start -->

                <div class="line"></div>
                
                <article id="article4">
                    <h2>Functional infromation</h2>
                    
                    <div class="line"></div>
                    
                    <div class="articleBody clear">
                    	<%--<figure>
	                    	<a href="http://tutorialzine.com/2010/01/halftone-navigation-menu-jquery-css/"><img src="http://tutorialzine.com/img/featured/610.jpg" width="620" height="340" /></a>
                        </figure>
                        
                        <p>Today we are making a CSS3 & jQuery halftone-style navigation menu, which will allow you to display animated halftone-style shapes in accordance with the navigation links, and will provide a simple editor for creating additional shapes as well.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus quam quis nibh fringilla sit amet consectetur lectus malesuada. Sed nec libero erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc mi nisi, rhoncus ut vestibulum ac, sollicitudin quis lorem. Duis felis dui, vulputate nec adipiscing nec, interdum vel tortor. Sed gravida, erat nec rutrum tincidunt, metus mauris imperdiet nunc, et elementum tortor nunc at eros. Donec malesuada congue molestie. Suspendisse potenti. Vestibulum cursus congue sem et feugiat. Morbi quis elit odio. </p>--%>
                  <%-- <h2>Functional infromation</h2>--%><asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT * FROM [functional]" DeleteCommand="delete from [functional] where id=@id "></asp:SqlDataSource>
                        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Vertical" Height="193px" Width="831px" PageSize="5" AllowPaging="True">
                             <AlternatingRowStyle BackColor="#CCCCCC" />
                             <Columns>
                                 <asp:CommandField ShowDeleteButton="True" />
                                 <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                 <asp:BoundField DataField="report" HeaderText="report" SortExpression="report" Visible="False" />
                                 <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name">
                                 <HeaderStyle Width="100px" />
                                 <ItemStyle ForeColor="#FF6600" />
                                 </asp:BoundField>
                             </Columns>
                             <FooterStyle BackColor="#CCCCCC" />
                             <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                             <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F1F1F1" />
                             <SortedAscendingHeaderStyle BackColor="#808080" />
                             <SortedDescendingCellStyle BackColor="#CAC9C9" />
                             <SortedDescendingHeaderStyle BackColor="#383838" />
                         </asp:GridView>

                          </div>
                </article>
                
				<!-- Article 3 end -->


            </section>

        <footer> <!-- Marking the footer section -->

           <div class="line"></div>
           
           <p>Copyright 2010 - YourSite.com</p> <!-- Change the copyright notice -->
           
           <a href="#" class="up">Go UP</a>
           <a href="https://www.facebook.com/BMK.User/" class="by">B M K</a>
           

        </footer>
            
		</section> <!-- Closing the #page section -->
        
        <!-- JavaScript Includes -->
        
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
        <script src="jquery.scrollTo-min.js"></script>
        <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
        <script src="jquery.scrollTo.js"></script>
        <script src="script.js"></script>
        <script src="script.js"></script></form>
    </body>
</html>
