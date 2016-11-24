<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <table style ="text-align :center " align="center" >
<tr>
<td align ="center" bgcolor="#ffcccc" style="height: 21px">
<strong ><span style ="color :#ffffff;font-family:宋体">最新产品 &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong>&nbsp;<span style ="color:#ffffff"><span style="font-size :9pt;text-decoration:underline">
<a href ="more.aspx">更多&gt;&gt;</a></span>&nbsp;</span>
</td>
</tr>
<tr><td align="center" style="height :4px; background-image: url(image/背景1.gif);">
<span style ="font-size :9pt"><a href="more.aspx" ></a></span>
<asp:DataList ID="DataList1" runat ="server" DataKeyField ="bh" DataSourceID="SqlDataSource1" RepeatColumns ="4" RepeatDirection ="Horizontal" CellSpacing ="20">
<ItemTemplate >
<a href="show.aspx?bh=<%#Eval("bh") %>"target="_blank">
<img src ="image/<%#Eval("pic")%>" height ="120" width ="120" /><br/></a>
<asp:Label ID ="titleLabel" runat ="server" Text ='<%#Eval("title") %>' Font-Size ="9pt"></asp:Label>

</ItemTemplate>
</asp:DataList><asp:SqlDataSource ID ="SqlDataSource1" runat ="server" 
ConnectionString="<%$ ConnectionStrings:dblConnectionString %>" SelectCommand ="SELECT top 12 bh,title,pic FROM product order by bh desc"></asp:SqlDataSource>
</td>
</tr>
</table>
</asp:Content>

