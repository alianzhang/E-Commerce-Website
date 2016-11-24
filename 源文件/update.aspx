<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>修改产品信息</title>
</head>
<body >

    <form id="form1" runat="server">
    <div align= "center">
    <table style ="width:778px;text-align:center;"> 
    <tr>
    <td style="text-align:center; width: 774px;background-position: center center; background-image: url(image/b.jpg);vertical-align: middle; width:774px; position: static;height: 200px;"><span style="font-size:24pt;font-family:Tahoma "></span></td>
    </tr></table> 
    </div>
    
    <div align= "center">
    <table style ="width:778px;text-align:center;">
    <tr><td style="height: 571px; background-image: url(image/背景1.gif);">
    <div  style="text-align :center ; width: 778px; height:550px; vertical-align: middle;" align="center"><strong style="font-size: 20pt; color: #f86484" >修改产品信息:<hr /></strong>
    <div  align= "center">
    
    <table style ="font-size :9pt;text-align:center; ">
    <tr><td style="width :100px; border-left-color: #ffcccc; border-bottom-color: #ffcccc; border-top-style: double; border-top-color: #ffcccc; border-right-style: double; border-left-style: double; border-right-color: #ffcccc; border-bottom-style: double; height: 26px;">
        <strong>产品名称:</strong></td>
    <td style="width :101px; height: 26px;"><asp:TextBox ID ="TextBox1" runat ="server" Width ="320px" style="border-left-color: #99ff66; border-bottom-color: #99ff66; border-top-style: none; border-top-color: #99ff66; border-right-style: none; border-left-style: none; border-right-color: #99ff66; border-bottom-style: none"></asp:TextBox>
    </td>
    </tr>
    <tr><td style="width :100px;height:123px; border-left-color: #ffcccc; border-bottom-color: #ffcccc; border-top-style: double; border-top-color: #ffcccc; border-right-style: double; border-left-style: double; border-right-color: #ffcccc; border-bottom-style: double;">
        <strong>产品介绍:</strong></td>
    <td style="width :101px;height:125px; border-top-style: none; border-right-style: none; border-left-style: none; border-bottom-style: none;"><asp:TextBox ID ="TextBox2" runat ="server" Height ="176px" TextMode ="MultiLine" Width ="320px" style="border-left-color: #99ff66; border-bottom-color: #99ff66; border-top-style: none; border-top-color: #99ff66; border-right-style: none; border-left-style: none; border-right-color: #99ff66; border-bottom-style: none"></asp:TextBox></td>
    </tr>
    <tr><td style="width :100px;height:184px; border-left-color: #ffcccc; border-bottom-color: #ffcccc; border-top-style: double; border-top-color: #ffcccc; border-right-style: double; border-left-style: double; border-right-color: #ffcccc; border-bottom-style: double;">
        <strong>产品照片:</strong></td>
    <td style="width :101px;height:185px; border-left-color: #99ff66; border-bottom-color: #99ff66; border-top-style: none; border-top-color: #99ff66; border-right-style: none; border-left-style: none; border-right-color: #99ff66; border-bottom-style: none;"><asp:Image ID ="Image1" runat ="server" Height ="250px" Width ="325px" style="text-align: center" /><br />
    修改为:<asp:FileUpload ID ="FileUpload1" runat ="server" Width="327px" Height="30px" />
    </td>
    </tr>
    </table>
    </div>
    <asp:Button ID ="Button1" runat ="server" OnClick ="Button1_Click" Text ="修改完成" /><div>
                    

                    
        </div>
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
