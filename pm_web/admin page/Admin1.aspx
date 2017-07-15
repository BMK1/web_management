﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin1.aspx.cs" Inherits="pm_web.admin_page.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>B M K </title>

    <!-- Bootstrap Core CSS -->
    <%-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="bootstrap.min.css" rel="stylesheet" />

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'/>

    <!-- Plugin CSS -->
    <%-- <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">--%>
    <link href="magnific-popup.css" rel="stylesheet" />

    <!-- Theme CSS -->
    <%-- <link href="css/creative.min.css" rel="stylesheet">--%>
    <link href="creative.min.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
 <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
                        <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top">B M K</a>
                </div>
            </div>
        </nav>
    
    </div>
         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="#about">Register </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">PM</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">middel manger</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">functional manger</a>

                    </li>
                    <li><a href="../general/WebForm1.aspx">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
       <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading">Registratio infromation</h1>
                <hr/>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="select *from register" UpdateCommand="update register set name=@name, phone=@phone,email=@email,[certificate]=@certificate,expeirence_years=@expeirence_years,manager_type=@manager_type where id=@id" DeleteCommand="delete from register where id=@id"></asp:SqlDataSource>
                        
                    <hr class="light"/>
                    </div>
<asp:GridView ID="GridView1" runat="server"  AutoGenerateDeleteButton="True" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" Width="708px" AllowPaging="True" AllowSorting="True" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="16px" AllowCustomPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="5">
    <Columns>
        <asp:TemplateField HeaderText="add ">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Select" Text="Add" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" BorderWidth="5px" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" BorderWidth="10px" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" Width="7px" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
            </div>
       
    </header>
         <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">We've got what you need!</h2>
                    <hr class="light"/>
                    <h2 class="section-heading">PM infromation<asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT * FROM [manager]"  DeleteCommand="delete from [manager] where id=@id " UpdateCommand="update [manager] set name=@name,report=@report,image_pm=@image_pm,[The ratio]=@The ratio,titel=@titel where id=@id "></asp:SqlDataSource>
                    </h2>
                    <div style="margin-left:200px">
<asp:GridView ID="GridView7" runat="server" Width="644px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource7" style="margin-right: 0px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView7_SelectedIndexChanged">
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
                   
                    <%--<a href="#services" class="page-scroll btn btn-default btn-xl sr-button">Get Started!</a>--%>
                </div>
            </div>
        </div>
            </div>
    </section>
    </form>
</body>
</html>