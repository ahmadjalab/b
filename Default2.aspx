<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>  
   <!-- <script type="text/javascript">
        $(document).ready(function () {
            $('#show_password').hover(function show() {
                //Change the attribute to text  
                $('#txtPassword').attr('type', 'text');
                $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
            },
            function () {
                //Change the attribute back to password  
                $('#txtPassword').attr('type', 'password');
                $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
            });
            //CheckBox Show Password  
            $('#ShowPassword').click(function () {
                $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
            });
        });
    </script>  -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
    
       <!-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" ></asp:TextBox>
        <div class="container">
         <div class="input-group">  
                          
                        <div class="input-group-append">  
                            <button id="show_password" class="btn btn-primary" type="button">  
                                <span class="fa fa-eye-slash icon"></span>  
                            </button>  
                        </div>  
                    </div>
    </div>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="field can't be empty"></asp:RequiredFieldValidator>
    
        <br />
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="login" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="forgot password" OnClick="Button3_Click" />
        <br />-->
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
       
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="field can't be empty"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="field can't be empty"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="register" />
        <br />
        who is your best friend&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ?&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        what is your favorite color ?&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
 
    </div>  
         </form>

    </body>
</html>
