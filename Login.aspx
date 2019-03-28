<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="metrocs_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
        .auto-style1 {
            height: 44px;
            float: left;
            position: absolute;
            left: -11px;
            top: -67px;
        }
        </style>
	<div style="width:100%; height:100px; overflow:hidden; margin: 0 auto; background-color:#333">

    <div style=" height:100px; margin: 0 auto; overflow:hidden; position:relative; background-image:url('Image/header.PNG'); background-size:contain">
		
        <div  id="caption"  style="margin-top:20px;margin-left:12px; " class="auto-style1"> </div>
        
        <%--<div id="backbutton" style="height:44px; width:44px; margin-top:15px; float:left; position:absolute"> <img src="imgs/backbtn.png" width="44" height="44" /> </div>--%>
        
       <%--<div id="pagecaption" style="height:44px; margin-top:20px;float:left; margin-left:12px; position:absolute"> Caption </div>--%>
  </div></div>
</head>
<body>
   <div class="login">

   </div>
    <form id="form1" runat="server">
    
 
    <div>
        <%--<div class="login">
    <h1>Welcome to Student Online Services</h1>
    <form method="post" action="">
    <p><asp:TextBox ID="txtusername" name="login" value="" runat="server" placeholder="Username or Email" /></p>
    <p><asp:TextBox ID="txtpasswrd" name="password" runat="server" value="" placeholder="Password" /></p>
    <p class="remember_me">
      <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
      </label>
    </p>
    <p class="submit"><asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" /></p>
        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials! Please try again." Visible="false" CssClass="color:"></asp:Label>
    </form>
    </div>--%>
        <table style="margin:auto" border:"5px">
            <tr>              
                <td colspan="2">
                    <h1>Student Online Services</h1>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <h3>Login to your student portal...</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpasswrd" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpasswrd" runat="server" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <br /><asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                </td>               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials! Please try again." Visible="false" CssClass="color:"></asp:Label>
                </td>
            </tr>

        </table>
    </div>
    </form>
</body>
</html>
