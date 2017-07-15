<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Site1.Master" AutoEventWireup="true" CodeBehind="charts.aspx.cs" Inherits="pm_web.manager.charts" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [name], [The ratio] AS The_ratio FROM [manager]"></asp:SqlDataSource>
</p>
<p>
    <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load" DataSourceID="SqlDataSource1" Height="536px" Width="1261px">
        <series>
            <asp:Series Name="Series1" XValueMember="name" YValueMembers="The_ratio">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
</p>
<p>
    <br />
</p>
</asp:Content>
