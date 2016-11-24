<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div align= "center">
<table style ="text-align:center;" align= "center">
<tr><td style="background-image: url(image/背景1.gif); width: 635px; height: 300px; text-align: center" align= "center">
<strong style="font-size: 20pt; color: #f86484" >查询结果</strong><br /><hr />
    <br />
    <br />
    <br />
    <asp:Repeater ID="Repeater1" runat="server">
    <HeaderTemplate >
<table style ="text-align:center;"align= "center">
 
</HeaderTemplate>
<ItemTemplate >
<tr>
<td><%#Eval("bh") %></td>
<td><a href ="show.aspx?bh=<%#Eval("bh") %>" target="_blank"><%#Eval("title") %></a> </td>
</tr>
</ItemTemplate>
 <FooterTemplate ></table></FooterTemplate>
    
    </asp:Repeater>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server">首页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server">上一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server">下一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server">尾页</asp:LinkButton>
    <asp:TextBox ID="TextBox1" runat="server" Width="63px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="转到" OnClick="Button1_Click" /><br />
 </td></tr></table> 
 </div>   
</asp:Content>

