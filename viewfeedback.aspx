<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="viewfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="fid" HeaderText="fid" SortExpression="fid" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="frate" HeaderText="frate" SortExpression="frate" />
            <asp:BoundField DataField="ftext" HeaderText="ftext" SortExpression="ftext" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restaurante %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</asp:Content>

