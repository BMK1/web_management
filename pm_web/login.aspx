<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="pm_web.login" %>

<!DOCTYPE html>
<html >
<head>
<%--<link href="style.css" rel="stylesheet" />--%>
    <%--<script src="index.js"></script>--%>
    <meta charset="UTF-8"><title>BMK</title>
    <style>
       a:hover {
    background-color: ActiveBorder;
}
       .mas:hover
       { 
    border: solid 1px grey;
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: #1E90FF;   
  
       }
        
    </style>

  
      <%--<link rel="stylesheet" href="css/style.css">--%>
    <link href="style.css" rel="stylesheet" />

</head>

<body runat="server" style="background:#808080">
    <form runat="server">
  <div class="vid-container">
  <video id="Video1" class="bgvid back" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
  </video>
  <div class="inner-container">
    <video id="Video2" class="bgvid inner" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
    </video>
    <div class="box">
      <h1>login</h1>
      <%--<input type="text" placeholder="Username"/>--%><asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox>
     <%-- <input type="text" placeholder="Password"/>--%><asp:TextBox ID="TextBox2" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
      <%--<button>Login</button>--%><asp:Button ID="button" CssClass="mas" OnClientClick=""  runat="server" Text="Login"  BackColor="#FF3399" OnClick="Button1_Click" />
      <div style="margin-left:55px">  <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" ForeColor="Red" Font-Size="Medium"></asp:Label></div>
      <p>Not a member? <span> <a id="mat" href="admin/WebForm3.aspx" >Sign up</a></span></p>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"> </script>
        <%--<script src="index.js"></script>--%>
        <script src="index.js"></script>
       
</form>
</body>
</html>
