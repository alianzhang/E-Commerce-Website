<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert.aspx.cs" Inherits="insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>添加新产品</title>
</head>
<body >
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
    <div style="text-align :center ; color: #f86484; text-decoration: underline;"><strong ><span style="font-size :20pt; color: #f86484; text-decoration: none;">
                    添加新产品
                    </span></strong><hr />
                    
   
    产品图片:<asp:FileUpload ID ="FileUpload1" runat ="server" /><br />
                    <br />
    产品名称:<asp:TextBox ID ="TextBox1" runat ="server" Width="217px" ></asp:TextBox><br />
                    <br />               
    产品介绍:<br />
        <asp:TextBox ID ="TextBox2" runat ="server" Height ="211px"
    width="294px"></asp:TextBox><br />
                    <br />
                    &nbsp;
    <asp:Button ID ="Button1" runat ="server" OnClick ="Button1_Click" Text ="添加新产品" />
                
    </div>
    </td></tr>
    </table>
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
