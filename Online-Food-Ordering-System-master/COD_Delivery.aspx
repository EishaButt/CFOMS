<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="COD_Delivery.aspx.cs" Inherits="OFOS.COD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
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
    background-color:#222930;
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
	background-color: #3DFF33;
	border-radius: 4px;
}

.b4{
    background-color:#00ccff;
	border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    float: center;
    width:16.66%;
    
}
.b4:hover {
	background-color:white;
	color:#466d78;
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
  background-color:#595959;
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

        input[type=text] {
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border-radius: 1px;
    background:#595959;
}

    </style>
    <title> COD Delivery</title>
        
    
</head>
<body>
    <form id="form1" runat="server">
    <div>

           <asp:Button CssClass="b1" Text="Sign Out" ID="b" runat="server" OnClick="LogOut_click" />
           <asp:Button CssClass="b1" Text="Thank You!" ID="b1" runat="server" OnClick="LogOut_click" />
     
      
        <h2><asp:Label Style="float:right; color:white; margin-right:30px;" ID="l" runat="server" />
           <asp:Label ID="l2" Style="float:right; color:white;" Text="Hello&nbsp" runat="server" />
       </h2>
      <br />
        <br />
     
        <center>&emsp;&emsp;&emsp;&emsp;<font size="7" color="#00ccff"><b><u>CASH ON DELIVERY</u></b> </font></center>
            <br />
            <br />
        <center>
                <h3><b><asp:Label ID="Label1" runat="server" Text="" ForeColor="White" ></asp:Label></b></h3>
        <br />
       </center>

        <b><font color="#00ccff">
        
        <p>    &nbsp;</p>
        <p style="margin-left: 40px">
            NAME :&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
            <asp:TextBox ID="Name" runat="server" Width="240px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ErrorMessage="Name must be provided"
                Display="Dynamic" ControlToValidate="Name" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
            </p>
        <p style="margin-left: 40px">
            HOUSE NO :&emsp;&emsp;&nbsp;
            <asp:TextBox ID="House_no" runat="server" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ErrorMessage="House no must be provided"
                Display="Dynamic" ControlToValidate="House_no" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>

        </p>
        <p style="margin-left: 40px">
            STREET :&emsp;&emsp;&emsp;&nbsp;&nbsp;
            <asp:TextBox ID="Street" runat="server" Width="240px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please provide the street"
                Display="Dynamic" ControlToValidate="Street" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            CITY :&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:DropDownList ID="D_city" runat="server" style="margin-left: 0px" Width="164px" Height="44px" BackColor="#595959">
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Vadodara</asp:ListItem>
                </asp:DropDownList>
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ErrorMessage="Enter the city"
                Display="Dynamic" ControlToValidate="D_city" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
        </p>
        <p style="margin-left: 40px">
            CONTACT NO :&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Contact" runat="server" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your contact number"
                Display="Dynamic" ControlToValidate="Contact" ForeColor="Red" Font-Size="Medium"></asp:RequiredFieldValidator>
        
            <asp:RegularExpressionValidator ID="rev_contact" runat="server" ControlToValidate="Contact" 
                ValidationExpression="[0-9]{10}" ErrorMessage="Please enter upto 10 digits."
                ForeColor="Red" Font-Size="Small" />
        </p><br />
        <p style="margin-left: 320px">
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="Button2" runat="server" Text="DELIVER" OnClick="Button2_Click" CssClass="button button2" />
        </p>
    </font></b>
            </div>
        </form>
    
</body>
</html>
