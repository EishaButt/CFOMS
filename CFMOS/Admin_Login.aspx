<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="OFOS.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
     <meta charset="utf-8"/>
 <style>
    @import url(http://weloveiconfonts.com/api/?family=fontawesome);
    @import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);

[class*="fontawesome-"]:before {
    font-family: 'FontAwesome', "Roboto", "Arial", "Helvetica Neue", sans-serif;
}

* {
    padding: 0;
    margin: 0;
}

html {
   -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

body {
    background-color: #fed136;
    color: black;
   
    margin: 0;
     padding:0;
     height:100px;
}

a {
    color: #eee;
    outline: 0;
    text-decoration: none;
}

    a:focus, a:hover {
        text-decoration: none;
    }

input {
    border: 0;
    color: inherit;
    font: inherit;
    margin: 0;
    outline: 0;
    padding: 0;
    -webkit-transition: background-color .3s;
    transition: background-color .3s;
}

.site__container {
    -webkit-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    padding: 3rem 0;
}

.form input[type="password"], .form input[type="text"], .form input[type="submit"] {
    width: 100%;
}

.form--login {
    color: #606468;
}

    .form--login label,
    .form--login input[type="text"],
    .form--login input[type="password"],
    .form--login input[type="submit"] {
        border-radius: 0.25rem;
        padding: 1rem;
    }

    .form--login label {
        background-color: black;
        border-bottom-right-radius: 0;
        border-top-right-radius: 0;
        padding-left: 1.25rem;
        padding-right: 1.25rem;
    }

    .form--login input[type="text"], .form--login input[type="password"] {
        background-color: #eee;
        border-bottom-left-radius: 0;
        border-top-left-radius: 0;
    }

        .form--login input[type="text"]:focus, .form--login input[type="text"]:hover, .form--login input[type="password"]:focus, .form--login input[type="password"]:hover {
            background-color: rgba(0, 0, 0, 0.15);
        }

    .form--login input[type="submit"] {
        background-color: #269120;
        color: #eee;
        font-weight: bold;
        text-transform: uppercase;
    }

        .form--login input[type="submit"]:focus, .form--login input[type="submit"]:hover {
            background-color: #4dae3c;
            cursor: pointer;
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

}
 .form__input:hover {
        background: #4dae3c;
    }
.align {
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
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

.text--center {
    text-align: center;
}

.grid__container {
    margin: 0 auto;
    max-width: 20rem;
    width: 90%;
}
.bg-red {
    background: #fed136;
}
.p-t-100 {
    padding-top: 100px;
}
.p-b-100 {
    padding-bottom: 100px;
}
.wrapper {
    margin: 0 auto;
}

.wrapper--w960 {
    max-width: 960px;
}
.card {
    overflow: hidden;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border-radius: 3px;
    background: #fff;
}

.card-2 {
    -webkit-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
    box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    border-radius: 10px;
    width: 100%;
    display: table;
}
.page-wrapper {
    min-height: 100vh;
}

    .card-2 .card-heading {
        background: url("../assets/Images/login.jpg") top left/cover no-repeat;
        width: 40.1%;
        display: table-cell;
    }

    @media (max-width: 767px) {
    .card-2 {
        display: block;
    }

        .card-2 .card-heading {
            width: 100%;
            display: block;
            padding-top: 300px;
            background-position: left center;
        }
}


    </style>

    <title>Admin Login</title>
</head>

<body>
    <div class="page-wrapper bg-red p-t-100 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="align">
        
    <div class="site__container">
    <center><font size="7">ADMIN LOGIN</font></center>
    <div class="grid__container">
        <form id="form1" runat="server" class="form form--login">
            
        <br />
        

            <center><asp:Label ID="status" runat="server" ForeColor="White" /></center>
            <br />
            <br />

        <div class="form__field">
           
          <asp:Label ID="lbl_login_admin" runat="server" CssClass="fontawesome-user" ForeColor="#29ab22">
              <span class="hidden" >UserName</span></asp:Label>
                    
                &nbsp;&nbsp;&nbsp;
            
            <asp:TextBox ID="tb_admin" runat="server" placeholder="UserName"  CssClass="form__input" ></asp:TextBox>
        </div>
            <br />
            <br />
            
         <div class="form__field"> 
                
              <asp:Label ID="lbl_login_pwd" runat="server" CssClass="fontawesome-lock" ForeColor="#3DFF33">
                <span class="hidden">Password</span>    
              </asp:Label>
            
                &nbsp;&nbsp;&nbsp;
                   
            <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password" placeholder="Password" CssClass="form__input"></asp:TextBox>
        </div>
            <br />
            <br />
            <br />
            <br />
        <div class="form__field">
            <asp:Button ID="button_login_admin"  CssClass="form__input" runat="server" Text="LOGIN" OnClick="Admin_Login_Click" />
        </div>
             </form>
          

    </div>
        </div>
    </div>
            </div>
        </div>
    </div>
    
</body>
</html>
