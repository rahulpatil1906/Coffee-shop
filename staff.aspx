<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="sname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="sname" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="sage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="sage" ErrorMessage="Age is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="sage" ErrorMessage="Wronge age" ForeColor="Red" 
                MaximumValue="99" MinimumValue="16"></asp:RangeValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Position"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="sposition" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="sposition" ErrorMessage="Post is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="simage" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="simage" ErrorMessage="Please add image" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" 
                Width="75px" />
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

