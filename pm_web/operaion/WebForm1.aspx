<%@ Page Title="" Language="C#" MasterPageFile="~/operaion/operaion.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pm_web.operaion.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
     &nbsp;   <asp:TextBox ID="TextBox1" runat="server" placeholder="Type your name" Width="193px"></asp:TextBox>
&nbsp;</p>
    <p>
        &nbsp;</p>
    <div style ="margin-left :30%;margin-right:30%"><p>
     &nbsp;   <asp:TextBox ID="TextBox2" runat="server" Height="400px" placeholder="Type your report....." TextMode="MultiLine" Width="700px"></asp:TextBox>
    </p></div>
    <p>
        &nbsp;</p>
     <div style ="margin-left :560px">&nbsp;<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Send to middle managing" Height="45px" OnClick="Button1_Click" Width="300px" Font-Size="15pt" />
    </p></div>
<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Lime" Visible="False"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
</asp:Content>
