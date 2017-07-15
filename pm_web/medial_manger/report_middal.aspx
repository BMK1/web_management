<%@ Page Title="" Language="C#" MasterPageFile="~/medial_manger/medal.Master" AutoEventWireup="true" CodeBehind="report_middal.aspx.cs" Inherits="pm_web.medial_manger.report_middal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 2px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div style="margin:20px">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" Font-Italic="False" Font-Names="Source Sans Pro ExtraLight" ForeColor="Black" GridLines="None" Width="335px" Height="243px" Font-Bold="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView></div> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [id], [name] FROM [functional]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [report] FROM [functional] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    <asp:DetailsView ID="DetailsView1" runat="server" Height="58px" Width="459px" AutoGenerateRows="False" CellPadding="3"  DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" Font-Bold="True" Font-Italic="False" Font-Names="Adobe Heiti Std R" Visible="False">
        <EditRowStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="report   " SortExpression="report ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("report") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("report") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("report") %>'></asp:Label>
                    &nbsp; &nbsp; &nbsp;
                </ItemTemplate>
                <ControlStyle ForeColor="#00B9FF" />
                <HeaderStyle BorderWidth="10px" ForeColor="#000000" Width="20px" />
                <ItemStyle BorderWidth="10px" ForeColor="#00B9FF" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510"  VerticalAlign="Middle" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"  />
    </asp:DetailsView>
  
    <br />
    <br />
    <table style="font-family:'Adobe Garamond Pro'" class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Name" Font-Bold="True"></asp:Label> &nbsp; &nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Font-Names="Adobe Gothic Std B"></asp:TextBox>
                <br />
               <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" placeholder="Type your report here"  TextMode="MultiLine" Font-Names="Adobe Gothic Std B" Height="157px" Width="282px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="33px" CssClass="btn-primary" OnClick="Button1_Click" Text="Send report" Width="139px" />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" ForeColor="#33CC33" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
  
</asp:Content>

