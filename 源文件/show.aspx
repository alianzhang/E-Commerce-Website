<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="show2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div align= "center">
    <table style ="text-align:center;">
    <tr><td style=" background-image: url(image/背景1.gif); width: 638px; height: 333px;">
 <strong ><span style="font-size :20pt; vertical-align: middle; color: #f86484; text-align: center;">&nbsp; &nbsp; 产品详细信息:</span></strong><br />
    <hr />
    &nbsp;<br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="bh" DataSourceID="SqlDataSource1" BorderColor="#FFCCCC">
        <EditItemTemplate>
            bh:
            <asp:Label ID="bhLabel1" runat="server" Text='<%# Eval("bh") %>'></asp:Label><br />
            pic:
            <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>'>
            </asp:TextBox><br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>'>
            </asp:TextBox><br />
            contents:
            <asp:TextBox ID="contentsTextBox" runat="server" Text='<%# Bind("contents") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="更新">
            </asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="取消">
            </asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            bh:
            <asp:TextBox ID="bhTextBox" runat="server" Text='<%# Bind("bh") %>'>
            </asp:TextBox><br />
            pic:
            <asp:TextBox ID="picTextBox" runat="server" Text='<%# Bind("pic") %>'>
            </asp:TextBox><br />
            title:
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>'>
            </asp:TextBox><br />
            contents:
            <asp:TextBox ID="contentsTextBox" runat="server" Text='<%# Bind("contents") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="插入">
            </asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="取消">
            </asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td ><img src="image/<%#Eval("pic") %>"/></td>
                    
                    <td style="width: 100px;">
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>'>'Fond-Bold="Ture"</asp:Label><br/><br/>
                        第<asp:Label ID="bhLabel" runat="server" Text='<%# Eval("bh") %>'></asp:Label>号产品<br/><br/>
                        <asp:Label ID="contentsLabel" runat="server" Text='<%# Eval("contents") %>'></asp:Label><br/></td>
                </tr>
            </table>
            
        </ItemTemplate>
    </asp:FormView>
    &nbsp;
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dblConnectionString %>"
        SelectCommand="SELECT * FROM [product] WHERE ([bh] = @bh)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="bh" QueryStringField="bh" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</td>
    </tr>
    </table>
    </div>

</asp:Content>

