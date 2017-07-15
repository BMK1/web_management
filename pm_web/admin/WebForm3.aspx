<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="pm_web.admin.WebForm3" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">--%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Signup / Registration form using Material Design - Demo by W3lessons</title>
    <!-- CORE CSS-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">

    <style type="text/css">
        html,
        body { 
            height: 100%;
        }

        html {
            display: table;
            margin: auto;
        }

        body {
            display: table-cell;
            vertical-align: middle;
        }

        .margin {
            margin: 0 !important;
        }

        .auto-style1 {
            background-color: #FF6600;
        }
        #DropDownList1{
            display:block;
            position:absolute;
            /*right:130px;*/
            width: 183px;
             left:18%;  
           
           
        }
          #DropDownList2{
            display:block;
            position:absolute;
          left:43%;  
            width: 183px;
            top:575px;
             /*display:block;
            position:absolute;
            right:92px;
            width: 183px;*/

        }
          #DropDownList3{
            display:block;
            position:absolute;
             left:43%;  
           width: 183px;
             /*display:block;
            position:absolute;
            right:92px;
            width: 183px;*/
        }
          #mar{
             
          }
          #expierence{
 position:absolute;
 width:282px;
             left:54px;
          }
          #Label1{position:absolute;
                  left:110px;
          }
          #TextBox1{ 
              position:absolute;
            
              left:54px;
              width:320px;
          }
        #k {
             position:absolute;
            
              left:64px;
            
        }
        #Button1{
            position:absolute;
            left:95px;
            /*top: 1900px;*/
        }
        #exp{
            position :absolute;
            left:2px;
        }
       
        
    </style>
    <script src="JavaScript1.js"></script>
</head>

<body class="blue" runat="server">
    <form runat="server">

        <div id="login-page" class="row">
            <div class="col s12 z-depth-6 card-panel">

                <div class="row">
                    <div class="input-field col s12 center">
                        <h1 class="white" style="font-family: 'Showcard Gothic'; color: #FF6600">BMK</h1>
                        <p class="center login-form-text" style="font-family: Constantia; font-size: xx-large; color: #FFFFFF;"><span class="auto-style1" style="font-family: 'Tw Cen MT'; color: #FFFFFF; font-size: x-large">Is There No One Else ! </span></p>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-social-person-outline prefix"></i>
                       <%-- <input id="username" type="text" class="validate">--%><asp:TextBox ID="username" runat="server"></asp:TextBox>
                        <label for="username" class="center-align">Username</label>
                    </div>
                </div>
                <div class="row margin">
                    <div class="input-field col s12">
                        <i class="mdi-communication-email prefix"></i>
                        <%--<input id="email" type="email" class="validate">--%><asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <label for="email" class="center-align">Email</label>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <%-- <i class="glyphicon glyphicon-earphone prefix"></i>--%><span class="glyphicon glyphicon-earphone prefix"></span>
                           <%-- <input id="phone" type="number" class="validate">--%><asp:TextBox ID="phone" runat="server"></asp:TextBox>
                            <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
runat="server" ErrorMessage="Enter valid Phone number" 
ControlToValidate="phone" 
ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>--%>
                           <%-- <asp:RegularExpressionValidator runat="server" ControlToValidate = "phone" ID="RegularExpressionValidator1" ValidationExpression = "^[\s\S]{0,11}$"  runat="server" ErrorMessage="Maximum 8 characters allowed."></asp:RegularExpressionValidator>--%>
                            &nbsp;<label for="phone" class="center-align">Phone</label>
                            
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                           <%-- <i class="mdi-action-lock-outline prefix"></i>--%>
                            <span class="glyphicon glyphicon-user prefix"></span>
                            <asp:DropDownList ID="DropDownList1"  runat="server" class="validate">
                                <asp:ListItem Value="-1">select managment type</asp:ListItem>
                                <asp:ListItem Value="2">genral manager</asp:ListItem>
                                <asp:ListItem Value="3">middeal</asp:ListItem>
                                <asp:ListItem Value="4">functional</asp:ListItem>
                            </asp:DropDownList>
                            <%--<input id="password-again" type="password">--%><%--<asp:TextBox ID="TextBox2" runat="server" Height="16px"></asp:TextBox>--%>
                        </div>
                        
                    </div>
                <br />
                    <br />
                    <br />
                    <br />
                   
                <div class="row margin">
                    <div class="dropdownlist col s12">
                     <%--   <i class="mdi-action-lock-outline prefix"></i>--%>
                        
                     <%--  <span class="glyphicon glyphicon-education prefix " style="width:60px;"></span>--%> 
                         <span class="fa fa-graduation-cap" style="font-size:30px"></span>
                       <asp:DropDownList ID="DropDownList2"  runat="server">
                            <asp:ListItem>Bachelor</asp:ListItem>
                            <asp:ListItem>Master</asp:ListItem>
                            <asp:ListItem>Dr</asp:ListItem>
                        </asp:DropDownList>
                 <%--  <i id="mar" class="fa fa-graduation-cap" style="font-size:30px;color:black; position:absolute; left :520px"></i>--%>
                    </div>
                </div>
            </div>
                <br />
                 <br />
                <br />
<div class="row margin">
                        <div class="input-field col s12">
                            <%-- <i class="glyphicon glyphicon-earphone prefix"></i>--%><i class="fa fa-cogs" style="font-size:36px" id="exp"></i>
                           <%-- <input id="phone" type="number" class="validate">--%><asp:TextBox ID="expierence" runat="server" class="validate" ></asp:TextBox>
                            &nbsp;<label for="expierence"  id="k" class="center-align">Expierence</label>
                            
                        </div>
                    </div>
                <br />
                 <br />
                  <br />
                 <div class="row margin">
                    <div class="dropdownlist col s12">
                     <%--   <i class="mdi-action-lock-outline prefix"></i>--%>
                        
                     <%--  <span class="glyphicon glyphicon-education prefix " style="width:60px;"></span>--%> 
                       <asp:DropDownList ID="DropDownList3"  runat="server">
                            <asp:ListItem Value="-1">Select Gender</asp:ListItem>
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Fmale</asp:ListItem>
                        </asp:DropDownList>
                        <i class="fa fa-intersex" style="font-size:40px;color:black"></i>
                  <%-- <i  class="fa fa-graduation-cap" style="font-size:30px;color:black; position:absolute; left :520px"></i>--%>
                    </div>
                </div>
           
                <br />
                   <br />
                <br />
                   <br />
                <div class="row">
                    <div class="input-field col s12">
                       <%-- <a href="register.html" class="btn waves-effect waves-light col s12">Register Now</a>--%><asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Register"  Width="164px" OnClick="Button1_Click" Font-Names="Comic Sans MS" />
                   <br />

                    </div>
                    <div class="input-field col s12">
                        <p class="margin center medium-small sign-up">Already have an account? <a href="../login.aspx">Login</a></p>
                    </div>
                    <div class="input-field col s12">
                       <%-- <a href="register.html" class="btn waves-effect waves-light col s12">Register Now</a>--%><asp:Label ID="Label1" runat="server" class="center-align" Text="Register is done Successfully" ForeColor="Green" Visible="False"></asp:Label>
                   <br />

                </div>
                 
            </div> 

            </div>
         </div>
       
    </form>

    <center>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Post Page - Responsive -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-5104998679826243"
     data-ad-slot="3470684978"></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</center>

    <!-- ================================================
    Scripts
    ================================================ -->

    <!-- jQuery Library -->
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!--materialize js-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>



    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-27820211-3', 'auto');
        ga('send', 'pageview');

    </script>
    <script src="//load.sumome.com/" data-sumo-site-id="1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1" async="async"></script>


    <footer class="page-footer">
        <div class="footer-copyright">
            <div class="container" style="font-family: 'Tw Cen MT'; font-size: small; color: #FFFFFF">
                © 2017 BMK
           <%-- <a class="grey-text text-lighten-4 right" href="http://w3lessons.info">Karthikeyan K</a>--%>
            </div>
        </div>
    </footer>
</body>

</html>
