<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OFOS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

        input[type=text],input[type=password] {
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    background-color:#ffff4c;
    border-radius: 4px;
}

        .auto-style1 {
            height: 26px;
        }
.b{
    background-color:#00ccff;
	border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    float: left;
    width:16.66%;
    
}
.b:hover {
	background-color:white;
	color:#466d78;
}


input[type="submit"].b1{
    background-color:#00ccff;
    border: 1px solid black;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    float: right;
	padding: 10px 16px;
}

input[type="submit"].b1:hover{
	background-color:white;
	color:#00ccff;
}

body{
    background:
  linear-gradient(
    rgba(0, 0, 0, 0.5),
    rgba(0, 0, 0, 0.5)
  ),
  url("../assets/Images/cook_02.jpg");
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
}

.row{
    height:30px;
    width:32%;
	color:white;
	border:transparent;
	font-family:red-serif,Georgia;
	text-shadow: 2px 2px red;
}

.gridview{
    width:100%;
    height:100%;
    padding-top:20%;
	border:5px;
	
}

.gridview1{
    width:60%;
    height:80%;
    padding-top:20%;
	
}


.header{
    color:solid black;
    
    font-size:15px;
    background:#E9E9E9;
    height:35px;
}

.button {
    
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button3 {
	background-color: #3DFF33;
	border-radius: 50%;
	border:transparent;
	color:#2c3338;
	outline-style:none;
}

.button3:hover {
	background-color:white;
	color:#2c3338;
	}
	

.button2 {
	background-color: #2e9d29;
	border-radius: 4px;
}
.button2:hover {
	background-color:white;
	color:#d5a500;
}
.b4{
    background-color:#fed136;
	border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    margin-top:100px;
    width:16.66%;
    
}
.b4:hover {
	background-color:white;
	color:#d5a500;
}
.b5{
    background-color:#fed136;
	border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    width:16.66%;
    
}
.b5:hover {
	background-color:white;
	color:#d5a500;
}

.hidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}

.form__field {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 1rem;
}

.form__input {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
		  outline:none;
		  
}

.form input[type="password"], .form input[type="text"], .form input[type="submit"] {
  width: 100%;
  background-color:#E9E9E9;
  outline:none;
  
  }
  
  [class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

* {
  box-sizing: border-box;
  
}

.dropbtn {
    background-color:#00ccff;
    text-align: center;
    text-decoration: none;
	display: inline-block;
    color: white;
    padding: 10px 16px;
    font-size: 16px;
    border: 1px solid black;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #e6e6e6}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3DFF33;
}

    </style>
    <title>Login Page</title>
    
</head>
<body>
    <h1 style="margin-left:20px;"><span style="color:#fed136;">C</span><span style="color:white;">F</span><span style="color:#4dae3c;">M</span><span style="color:white;">O</span><span style="color:#fed136;">S</span></h1>
    <center>
    <form id="form1" runat="server">

        <asp:Label ID="status0" runat="server" ForeColor="#3DFF33" Font-Bold="true" Font-Size="Large" Font-Names="arial"/>
        <br /><br /><br />
            <center>
                <asp:Button Text="REGISTERED USER" runat="server" Width="232px" OnClick="user_click" CssClass="b4" CausesValidation="false" />
                <asp:Button Text="GUEST" runat="server" Width="232px" OnClick="guest_click" CssClass="b5" CausesValidation="false"/>
                <br /><br />
                <h3><asp:Label ID="status" runat="server" ForeColor="white" font-size="Larger" Font-Names="arial" />
               </h3> <br />
              
            <div id="registered"  runat="server" visible="false">
           
                <table cellpadding="10px";>
                    <div class="form__field"> 
                    <tr>
                <td>
                    <h3><asp:Label ID="lbl_login_user" runat="server" CssClass="fontawesome-user"><span class="hidden" >USERNAME</span></asp:Label></h3>
                </td>
                <td>
                <asp:TextBox ID="tb_user" runat="server" Placeholder="USERNAME" CssClass="form__input" BackColor="#E9E9E9" />
                </td>
            </tr>
            <tr>
                <td>
                    <h3><asp:Label ID="lbl_login_pwd" runat="server" CssClass="fontawesome-lock"><span class="hidden">PASSWORD</span>    
              </asp:Label></h3>
                </td>
                <td>
                <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password" Placeholder="PASSWORD" CssClass="form__input" BackColor="#E9E9E9" />
                </td>
            </tr>
                     </div>   
        </table>
                <br />
                &emsp;
            <asp:Button ID="button_login" runat="server" Text="Login" OnClick="Login_Click" CssClass="button button2" Width="160px"></asp:Button>
        <asp:HyperLink ID="link_regi" runat="server" NavigateUrl="~/Registration.aspx" CssClass="button button2" Text="Create Account"/>
                </div>
        <div id="guest" runat="server" visible="false">
            
       <h3>
       <table cellpadding="10" style="align-items:center; margin-right:50px;">
         <tr>
            <td style="text-align:right"><asp:Label ID="Label2" runat="server" Text="NAME : " ForeColor="white"></asp:Label></td>
            <td><asp:TextBox ID="tb_name" runat="server" BackColor="#E9E9E9"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="tb_name" ErrorMessage="Please provide your name."
                 ForeColor="Red" />
            </td>
                 
            </tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label5" runat="server" Text="EMAIL ID : " ForeColor="white"></asp:Label></td>
            <td><asp:TextBox ID="tb_email" runat="server" BackColor="#E9E9E9"></asp:TextBox>
                <asp:RegularExpressionValidator id="rev_email" runat="server" 
                    ForeColor="Red"  ErrorMessage="This email is not in the correct format." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tb_email" /> 
            </td>
        </tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label6" runat="server" Text="CONTACT NO :" ForeColor="White"></asp:Label></td>
            <td><asp:TextBox ID="tb_contact" runat="server" BackColor="#E9E9E9"></asp:TextBox>
            <asp:RegularExpressionValidator ID="rev_contact" runat="server" 
                ControlToValidate="tb_contact" ValidationExpression="[0-9]{10}" ErrorMessage="Please enter upto 10 digits."
                 ForeColor="Red" /></td>
        </tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label7" runat="server" Text="HOUSE NO :" ForeColor="white"></asp:Label></td>
            <td><asp:TextBox ID="tb_house" runat="server" BackColor="#E9E9E9"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label8" runat="server" Text="STREET" ForeColor="white"></asp:Label></td>
            <td><asp:TextBox ID="tb_street" runat="server" BackColor="#E9E9E9"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:right" class="auto-style1"><asp:Label ID="Label9" runat="server" Text="CITY :" ForeColor="white"></asp:Label></td>
            <td class="auto-style1"><asp:DropDownList ID="DropDownList1_city" runat="server" BackColor="#E9E9E9" style="margin-left: 0px" Width="164px" Height="44px">
                <asp:ListItem>Lahore</asp:ListItem>
                <asp:ListItem>Karachi</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Rawalpindi</asp:ListItem>
                <asp:ListItem>Multan</asp:ListItem>
                <asp:ListItem>Gujranwala</asp:ListItem>
                <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem>Peshawar</asp:ListItem>
                <asp:ListItem>Islamabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem><asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        
            
        </table>
           </h3>
            <asp:Button ID="Button1_register" runat="server" Text="SUBMIT" 
                  OnClick="Button1_register_Click" CssClass="button button2"  />
                 
        </div>
            </center>
    </form>
       
    
</body>
</html>
