<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin.master" AutoEventWireup="true" CodeFile="viewres.aspx.cs" Inherits="viewres" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="r_id" HeaderText="r_id" SortExpression="r_id" />
            <asp:BoundField DataField="r_userid" HeaderText="r_userid" 
                SortExpression="r_userid" />
            <asp:BoundField DataField="r_name" HeaderText="r_name" 
                SortExpression="r_name" />
            <asp:BoundField DataField="r_adress" HeaderText="r_adress" 
                SortExpression="r_adress" />
            <asp:BoundField DataField="r_contact" HeaderText="r_contact" 
                SortExpression="r_contact" />
            <asp:BoundField DataField="r_date" HeaderText="r_date" 
                SortExpression="r_date" />
            <asp:BoundField DataField="r_time" HeaderText="r_time" 
                SortExpression="r_time" />
            <asp:BoundField DataField="rseats" HeaderText="rseats" 
                SortExpression="rseats" />
            <asp:BoundField DataField="r_sr" HeaderText="r_sr" SortExpression="r_sr" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:restaurante %>" 
        
    SelectCommand="SELECT [r_id], [r_userid], [r_name], [r_adress], [r_contact], [r_date], [r_time], [rseats], [r_sr] FROM [reservation]"></asp:SqlDataSource>
</asp:Content>

