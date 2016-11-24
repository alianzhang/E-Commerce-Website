<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="more.aspx.cs" Inherits="more" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" style="background-image: url(image/背景1.gif)" Height="312px" >
        <ItemTemplate>
            <table>
                <tr>
                    <td style="width: 100px;height:126px;">
                    <a href ="show.aspx?bh=<%#Eval("bh") %>" target ="_blank"><img src ="image/<%#Eval("pic") %>" width="120" height ="120" id ="IMG1" />  
                    </td>
                    <td style="width: 102px;height:126px;">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("bh") %>'></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("title") %>'></asp:Label></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>&nbsp;<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dblConnectionString %>"
        SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    <br />
    <br />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    &nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server">首页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server">上一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server">下一页</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server">尾页</asp:LinkButton>&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="转到" />
</asp:Content>

