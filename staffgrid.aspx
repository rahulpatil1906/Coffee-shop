<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="staffgrid.aspx.cs" Inherits="staffgrid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restaurante %>" 
        SelectCommand="SELECT * FROM [staff]"></asp:SqlDataSource>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Add new Employee" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="s_id" HeaderText="s_id" SortExpression="s_id" />
            <asp:BoundField DataField="s_name" HeaderText="s_name" 
                SortExpression="s_name" />
            <asp:BoundField DataField="s_age" HeaderText="s_age" SortExpression="s_age" />
            <asp:BoundField DataField="s_post" HeaderText="s_post" 
                SortExpression="s_post" />
            <asp:ImageField DataAlternateTextField="s_image" DataImageUrlField="s_image" 
                HeaderText="Image">
                <ControlStyle Height="100px" Width="100px" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="editstaff.aspx" 
                Text="Edit" DataNavigateUrlFields="s_id" 
                DataNavigateUrlFormatString="editstaff.aspx?s_id={0}" />
            <asp:HyperLinkField HeaderText="Delete" 
                Text="Delete" DataNavigateUrlFields="s_id" 
                DataNavigateUrlFormatString="deletestaff.aspx?s_id={0}" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </asp:Content>

