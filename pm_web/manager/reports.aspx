<%@ Page Title="" Language="C#" MasterPageFile="~/manager/Site1.Master" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="pm_web.manager.reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 1189px;
        }
        .auto-style2 {
            width: 1515px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [name], [id] FROM [middle]"></asp:SqlDataSource>
</p>
    
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pmConnectionString1 %>" SelectCommand="SELECT [report] FROM [middle] WHERE ([id] = @id)">
           <SelectParameters>
               <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
           </SelectParameters>
    </asp:SqlDataSource>
    
       <br />
    <br /><div >

    <h2 style="margin-left:35%" > The Report from middel managers</h2>
     <br />
    
     <table align="left" class="auto-style1">
         <tr >
             <td class="auto-style2" >
               <asp:GridView ID="GridView1" style="margin-left:30%"  runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" ForeColor="DodgerBlue" GridLines="None" Width="504px" Height="137px" >
         <AlternatingRowStyle BackColor="White" ForeColor="#1E90FF" />
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
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
    </asp:GridView>  </td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;<asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="429px" AutoGenerateRows="False" DataSourceID="SqlDataSource2"  style="margin-left:30%">
        <Fields>
            <asp:BoundField DataField="report" HeaderText="Report" SortExpression="Report"  >
            <ControlStyle BorderWidth="10px" ForeColor="#FF9933" />
            <FooterStyle BorderWidth="10px" />
            <HeaderStyle BorderStyle="Solid" BorderWidth="10px" Font-Names="Tahoma" Font-Size="X-Large" ForeColor="Black" />
            <ItemStyle BorderWidth="10px" />
            </asp:BoundField>
        </Fields>
    </asp:DetailsView></td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp; <h3 style="margin-left:40%" > Write your Report</h3>    <asp:TextBox ID="TextBox1" placeholder="Type Your Name Here..." runat="server" style="margin-left:40%"></asp:TextBox>
                 <br />
        <br /></td>
         </tr>
         <tr>
             <td class="auto-style2"> <asp:TextBox ID="TextBox2" placeholder="Type Here..." runat="server" TextMode="MultiLine" Height="157px" Width="399px" style="margin-left:40%" ></asp:TextBox>
                 <br />
                 <br />
             </td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="363px" style="margin-left:40%" /></td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;<br />
                <asp:Image ID="Image1" runat="server" Height="122px" ViewStateMode="Enabled" Width="277px" style="margin-left:40%"  /></td>
         </tr>
         <tr>
             <td class="auto-style2">
                 &nbsp;<asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False"></asp:Label><br /> <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" style="margin-left:40%" ></asp:Label></td>
         </tr>
         <tr>
             <td class="auto-style2"> <asp:TextBox ID="TextBox3" runat="server" placeholder="Type The ratio in percent" TextMode="Number" Height="25px" Width="234px" style="margin-left:40%" ></asp:TextBox></td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2"> <asp:Button ID="Button1" runat="server" Text="Broadcast" OnClick="Button1_Click" Width="189px" style="margin-left:40%"  />&nbsp;&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Broadcast is done successfully" Visible="False" style="margin-left:40%" ></asp:Label>
</td>
         </tr>
    </table>
     <br />
       <br />
   
     <br />
    <div>
       
      </div>
       
     


       
       

        <br />


    </div>

</asp:Content>
