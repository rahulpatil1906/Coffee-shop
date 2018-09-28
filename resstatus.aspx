<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagecust.master" AutoEventWireup="true" CodeFile="resstatus.aspx.cs" Inherits="resstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2">
                <Columns>
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
                    <asp:BoundField DataField="r_sr" HeaderText="r_sr" 
                        SortExpression="r_sr" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:restaurante %>" 
                
                SelectCommand="SELECT [r_name], [r_adress], [r_contact], [r_date], [r_time], [rseats], [r_sr] FROM [reservation] WHERE ([r_userid] = @r_userid)">
                <SelectParameters>
                    <asp:SessionParameter Name="r_userid" SessionField="User_id" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
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

