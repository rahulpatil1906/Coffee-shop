<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="editres.aspx.cs" Inherits="editres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Accept</asp:ListItem>
        <asp:ListItem>Decline</asp:ListItem>
</asp:DropDownList>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
</asp:Content>

