<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="2">
                <asp:View ID="View3" runat="server">
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </asp:View>
                <asp:View ID="View1" runat="server">
                    Enter your username and answer the qustions then click send to recive a new password<br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    who is your best friend&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    what is your favorite color ?&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="send" />
                </asp:View>
            </asp:MultiView>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
