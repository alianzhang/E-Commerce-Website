<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manager.aspx.cs" Inherits="manager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>美可儿时尚包吧后台管理页面</title>
</head>
<body>
    <form id="form1" runat="server">
    
     <div align= "center">
    <table style ="width:778px;text-align:center;"> 
    <tr>
    <td style="text-align:center ; width: 778px;background-position: center center; background-image: url(image/b.jpg);vertical-align: middle; width:774px; position: static;height: 200px;"><span style="font-size:24pt;font-family:Tahoma "></span></td>
    </tr></table> 
    </div>
    
    <div align= "center">
    <table style ="width:778px;text-align:center;">
    <tr><td style="background-image: url(image/背景1.gif)">
    
    <div style="text-align :center ; ">
    <strong style="font-size: 20pt; color: #f86484" >美可儿时尚包吧后台管理页面  </strong><hr /><br />
    <table style ="width:778px;text-align:center;">
    <tr>
    <td style="height: 334px; text-align: center; width: 778px;" align="center" >
    <asp:DataList ID ="DataList1" runat ="server"  RepeatColumns ="4" RepeatDirection ="Horizontal" DataKeyField="bh" Height="320px" HorizontalAlign="Center" Width="778px" >
    <ItemTemplate >
    <table >
    <tr>
    <td style ="width:100px">
    <a href ="show.aspx?bh=<%#Eval("bh") %>" target ="_blank" ><img src="image/<%#Eval("pic") %> " width ="120" height ="120" />
    </td>
    <td style ="width :55px"><asp:Label ID ="Label2" runat ="server" Text ='<%#Eval("bh") %>'></asp:Label><br /><br />
    <asp:Label ID ="Label3" runat ="server" Text ='<%#Eval("title") %>' Width ="36px"></asp:Label><br /><br />
    </td>
    </tr>
    </table>
    <a href ="update.aspx?bh=<%#Eval("bh") %>">修改</a>&nbsp;&nbsp;&nbsp;
    <a href ="del.aspx?bh=<%#Eval("bh")%>">删除</a>
    </ItemTemplate>
    </asp:DataList>
    </td></tr></table><br />
        <asp:Button ID ="Button2" runat ="server" PostBackUrl ="~/insert.aspx" Text ="插入新纪录" OnClick="Button2_Click" />
    <asp:Label ID ="Label1" runat ="server" EnableViewState ="false" Text ="Label"></asp:Label>
   <asp:LinkButton ID ="LinkButton1" runat ="server" EnableViewState ="false" >首页</asp:LinkButton>
   <asp:LinkButton ID ="LinkButton2" runat ="server" EnableViewState ="false" >上一页</asp:LinkButton>
   <asp:LinkButton ID ="LinkButton3" runat ="server" EnableViewState ="false" >下一页</asp:LinkButton>
   <asp:LinkButton ID ="LinkButton4" runat ="server" EnableViewState ="false" >最后一页</asp:LinkButton>
   <asp:TextBox ID ="TextBox1" runat ="server" EnableViewState ="false" Width ="39px"></asp:TextBox>
    <asp:Button ID ="Button1" runat ="server" EnableViewState ="false" OnClick ="Button1_Click" Text ="转到" />&nbsp;
    <asp:Button ID ="Button3" runat ="server" OnClick ="Button3_Click" Text ="安全退出" />&nbsp;
    </div>
    </td></tr>
    </table>
    </div>
    <div align= "center">
    <table width ="778" >
    <tr><td bgcolor="#ffcccc" style="text-align :center ; height: 80px; background-color: #ffcccc;" align="center">
    <span style="font-size :9pt">美可儿时尚包吧版权所有</span>
    </td>
    </tr>
    </table></div>
    </form>
</body>
</html>
