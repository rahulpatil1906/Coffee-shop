<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagecust.master" AutoEventWireup="true" CodeFile="custmenu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" 
    DataSourceID="SqlDataSource1" DataTextField="i_category" 
    DataValueField="i_category">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:restaurante %>" 
    SelectCommand="SELECT [i_category] FROM [add_menu]"></asp:SqlDataSource>
<asp:Button ID="Button1" runat="server" Text="search" />
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" 
            SortExpression="id" />
        <asp:BoundField DataField="i_name" HeaderText="i_name" 
            SortExpression="i_name" />
        <asp:BoundField DataField="i_cost" HeaderText="i_cost" 
            SortExpression="i_cost" />
        <asp:BoundField DataField="i_category" HeaderText="i_category" 
            SortExpression="i_category" />
        <asp:ImageField DataAlternateTextField="i_img" DataImageUrlField="i_img" 
            HeaderText="Imange">
            <ControlStyle Height="70px" Width="70px" />
        </asp:ImageField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:restaurante %>" 
    SelectCommand="SELECT * FROM [add_menu] WHERE ([i_category] = @i_category)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="i_category" 
            PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

