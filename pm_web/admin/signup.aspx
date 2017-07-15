<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="pm_web.admin.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .row {
            margin-top: 127px;
            text-align: center;
        }
        </style>
</head>
<body style="background-color:#00BFFF">
    <h1 style="text-align: center">
        Signup</h1>
    
    <div id="login-page" class="row"> 
    <div class="col s12 z-depth-6 card-panel">
         <form class="login-form" runat="server">
        <div class="row">
          <div class="input-field col s12 center">
              </div>
            </div>
             <div class="row margin">
               <i class="mdi-social-person-outline prefix"></i>
                 <asp:TextBox ID="TextBox1" placeholder="Username" runat="server" Width="223px" Height="32px"></asp:TextBox>
              <label for="username" class="center-align">
                 <br />
                 <br />
                 </label>
                 </div>

              <div>
          
            <asp:DropDownList ID="DropDownList1" runat="server" Width="223px" Height="32px" Font-Size="Medium">
        <asp:ListItem Value="1">admin</asp:ListItem>
    </asp:DropDownList>
       
                  <br />
                  <br />
       
                  <br />
       
                  </div>
               <div >
         
            <i class="mdi-communication-email prefix"></i>
           <asp:TextBox ID="TextBox2" placeholder="password" runat="server" Width="223px" Height="32px" ReadOnly="True"></asp:TextBox>
            <label for="email" class="center-align">
                   <br />
                   <br />
                   </label>
          </div>
       
             
                  </div>
             
         <div >
         
           <asp:Button ID="Button1" runat="server" Text="Add User" Height="44px" Width="248px"  ForeColor="White" BackColor="#3366FF" />
          </div>
             </form>
       

        </div>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Post Page - Responsive -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-5104998679826243"
     data-ad-slot="3470684978"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
     <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>


  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27820211-3', 'auto');
  ga('send', 'pageview');

</script><script src="//load.sumome.com/" data-sumo-site-id="1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1" async="async"></script>


   <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2015 W3lessons.info
            <a class="grey-text text-lighten-4 right" href="http://w3lessons.info">Karthikeyan K</a>
            </div>
          </div>
  </footer>
</body>
</html>
