<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OFOS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
  @import url('http://fonts.googleapis.com/css?family=Open+Sans:400,700');
  html{
    background-color: #f3f3f3;
}

.form-basic{
    max-width: 640px;
    margin: 0 auto;
    padding: 55px;
    box-sizing: border-box;

    background-color:  #ffffff;
    box-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.1);

    font: bold 14px sans-serif;
    text-align: center;
}

.form-basic .form-row{
    text-align: left;
    margin-bottom: 22px;
}

.form-basic .form-title-row{
    text-align: center;
    margin-bottom: 55px;
}

/* The form title */

.form-basic h1{
    display: inline-block;
    box-sizing: border-box;
    color:  #4dae3c;
    font-size: 24px;
    padding: 0 10px 15px;
    border-bottom: 2px solid #fed136;
    margin: 0;
}

.form-basic .form-row > label span{
    display: inline-block;
    box-sizing: border-box;
    color: #F05283;
    width: 180px;
    text-align: right;
    vertical-align: top;
    padding: 12px 25px;
}

.form-basic input{
    color:  #f3f3f3;
    box-sizing: border-box;
    width: 240px;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    padding: 12px;
    border: 1px solid #dbdbdb;
}

.form-basic input[type=radio],
.form-basic input[type=checkbox]{
    box-shadow: none;
    width: auto;
}

.form-basic input[type=checkbox]{
    margin-top: 13px;
}

.form-basic select{
    background-color: #ffffff;
    color:  #5f5f5f;
    box-sizing: border-box;
    max-width: 240px;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    padding: 12px 8px;
    border: 1px solid #dbdbdb;
}

.form-basic textarea{
    color:  #5f5f5f;
    box-sizing: border-box;
    width: 240px;
    height: 80px;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    font: normal 13px sans-serif;
    padding: 12px;
    border: 1px solid #dbdbdb;
    resize: vertical;
}

.form-basic .form-radio-buttons{
    display: inline-block;
    vertical-align: top;
}

.form-basic .form-radio-buttons > div{
    margin-top: 10px;
}

.form-basic .form-radio-buttons label span{
    margin-left: 8px;
    color: #5f5f5f;
    font-weight: normal;
}

.form-basic .form-radio-buttons input{
    width: auto;
}

.form-basic button{
    display: block;
    border-radius: 2px;
    background-color:  #fed136;
    color: #4dae3c;
    font-weight: bold;
    box-shadow: 1px 2px 4px 0 rgba(0, 0, 0, 0.08);
    padding: 14px 22px;
    border: 0;
    margin: 40px 183px 0;
}

/*	Making the form responsive. Remove this media query
    if you don't need the form to work on mobile devices. */

@media (max-width: 600px) {

    .form-basic{
        padding: 30px;
        max-width: 480px;
    }

    .form-basic .form-row{
        max-width: 300px;
        margin: 25px auto;
        text-align: left;
    }

    .form-basic .form-title-row{
        margin-bottom: 50px;
    }

    .form-basic .form-row > label span{
        display: block;
        text-align: left;
        padding: 0 0 15px;
    }

    .form-basic select{
        width: 240px;
    }

    .form-basic input[type=checkbox]{
        margin-top:0;
    }

    .form-basic .form-radio-buttons > div{
        margin: 0 0 10px;
    }

    .form-basic button{
        margin: 0;
    }

}

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html{
	background-color: #efefef;
}

body{
	font:14px/1.5 Arial, Helvetica, sans-serif;
	margin:0;
    background-color: #fed136;
}


header{
    box-sizing: border-box;
	text-align: center;
    width: 100%;
    padding: 25px 40px;
    background-color: #673AB7;
    overflow: hidden;
}


header h1{
    float: left;
	font: normal 24px/1.5 'Open Sans', sans-serif;
	color: #fff;
}

header a{
    color:#fff;
    float: right;
    text-decoration: none;
    display: inline-block;
    padding: 13px 50px;
    border-radius: 3px;
    font: bold 14px/1 'Open Sans', sans-serif;
    text-transform: uppercase;
    background-color:#F05283;

}

ul {
    list-style: none;
    border-bottom: 1px solid #EAEAEA;
    background-color: #FFF;
    padding: 20px;
    margin-top: 0;
    text-align: center;
    margin-bottom: 75px;
}

ul a{
    text-decoration: none;
    color: #FFF;
    text-align: left;
    background-color: #BCB8C2;
    padding: 10px 16px;
    border-radius: 2px;
    opacity: 0.8;
    font-size: 16px;
    display: inline-block;
    margin: 4px;
    line-height: 1;
    outline: none;

    transition: 0.2s ease;
}

ul li a.active{
    background-color: #F05283;
    pointer-events: none;
}

ul li a:hover {
    opacity: 1;
}


ul li{
    display: inline-block;
}


@media (max-width: 1000px) {


    header h1{
        float: none;
    }

    header a{
        margin-top: 25px;
        float: none;
    }

}

.main-content{
    margin-bottom: 75px;
}

/* -- Demo ads -- */

@media (max-width: 1200px) {
	#bsaHolder{ display:none;}
}

/* -- Link to Tutorialzine -- */

.tz-link{
	text-decoration: none;
	color: #fff !important;
	font: bold 36px Arial,Helvetica,sans-serif !important;
}

.tz-link span{
	color: #da431c;
}

        /* cellpadding */
    th, td { padding: 5px; }

    /* cellspacing */
    table { border-collapse: separate; border-spacing: 5px; } /* cellspacing="5" */
    table { border-collapse: collapse; border-spacing: 0; }   /* cellspacing="0" */

    /* valign */
    th, td { vertical-align: central; }

    /* align (center) */
    table { margin: 0 auto; }
    </style>
	<title>Registration page</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"/>

</head>
<body style="background-color:#fed136;">
   <h1 style="margin-left:20px;"><span style="color:#4dae3c;">C</span><span style="color:white;">F</span><span style="color:#4dae3c;">M</span><span style="color:white;">O</span><span style="color:#4dae3c;">S</span></h1>
    <center>

    <form id="form1" runat="server" class="form-basic">
    <p style=" text-align:right " >
            <asp:LinkButton ID="LinkButton1" ForeColor="#299e37" runat="server" CausesValidation="false" OnClick="LinkButton1_Click">Home Page</asp:LinkButton>
     </p>
            
        <div class="main-content"> 
        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <br />
            <br />
             <div class="form-title-row">
                <h1>REGISTRATION</h1>
             </div>   
            
            <br />
            <h3> <asp:Label ID="lblStatus" runat="server" Text=""  ForeColor="Green"></asp:Label>
            </h3><br /><br />    
          <table border="0" title="YOUR MEMBERSHIP!!"  >
            <tr>
              <td style="text-align:right"><asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label></td>
                <td style="text-align:left"><asp:TextBox ID="tb_username" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td colspan="2">   
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
              <asp:RequiredFieldValidator ID="rfv_username" runat="server" ErrorMessage="Username must be provided." 
                  Display="Dynamic" ControlToValidate="tb_username" ForeColor="Red" Font-Size="Small" /> 
            </td></tr>
            <tr>
                <td style="text-align:right"><asp:Label ID="Label2" runat="server" Text="Name : "></asp:Label></td>
                <td style="text-align:left"><asp:TextBox ID="tb_name" runat="server"></asp:TextBox></td>
            </tr>
              <tr><td></td></tr><tr><td></td></tr>
            <tr>
                <td style="text-align:right"><asp:Label ID="Label3" runat="server" Text="Password : "></asp:Label></td>
                <td style="text-align:left"><asp:TextBox ID="tb_pwd" runat="server" TextMode="Password"></asp:TextBox></td>

            </tr>
            <tr><td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="rfv_pwd" runat="server" ErrorMessage="You must enter a password." 
                    Display="Dynamic" ControlToValidate="tb_pwd" ForeColor="Red" Font-Size="Small" /></td>
            </tr>
            <tr>
                <td style="text-align:right"><asp:Label ID="Label4" runat="server" Text="Reenter Password : "></asp:Label></td>
                <td style="text-align:left"><asp:TextBox ID="tb_repwd" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr><td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator id="cv_repwd" runat="server" ErrorMessage="Your password does not match." 
                    ControlToCompare="tb_pwd" ControlToValidate="tb_repwd" ForeColor="Red" Font-Size="Small" /> 
            </td></tr>
            <tr>
                <td style="text-align:right"><asp:Label ID="Label5" runat="server" Text="Email ID : "></asp:Label></td>
                <td style="text-align:left"><asp:TextBox ID="tb_email" runat="server"></asp:TextBox></td>
            </tr>
        <tr><td colspan="2"> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:RegularExpressionValidator id="rev_email" runat="server" ErrorMessage="This email is not in the correct format." 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tb_email"
                ForeColor="Red" Font-Size="Small" /> 
        </td></tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label6" runat="server" Text="Contact No. : "></asp:Label></td>
            <td style="text-align:left"><asp:TextBox ID="tb_contact" runat="server"></asp:TextBox></td>
        </tr>
        <tr><td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="rev_contact" runat="server" ControlToValidate="tb_contact" 
                ValidationExpression="[0-9]{10}" ErrorMessage="Please enter upto 10 digits."
                ForeColor="Red" Font-Size="Small" />
        </td></tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label7" runat="server" Text="House No. : "></asp:Label></td>
            <td style="text-align:left"><asp:TextBox ID="tb_house" runat="server"></asp:TextBox></td>
        </tr>
        <%--<tr><td colspan="2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RegularExpressionValidator ID="rev_cntct" runat="server" ControlToValidate="tb_house" 
                ValidationExpression="[a-z]+[A-Z]+" ErrorMessage="Please enter upto 10 characters."
                ForeColor="Red" Font-Size="Small" />
        </td></tr>--%>         
        <tr>
            <td style="text-align:right"><asp:Label ID="Label8" runat="server" Text="Street:"></asp:Label></td>
            <td style="text-align:left"><asp:TextBox ID="tb_street" runat="server"></asp:TextBox></td>
        </tr>
              <tr><td></td></tr><tr><td></td></tr>
        <tr>
            <td style="text-align:right"><asp:Label ID="Label9" runat="server" Text="City:"></asp:Label></td>
            <td style="text-align:left">
                <asp:DropDownList ID="DropDownList1_city" runat="server" style="margin-left: 0px" Width="240px" >
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Vadodara</asp:ListItem>
                <asp:ListItem>Ahemdabad</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        </table>
            <br /><br />
        <asp:Button ID="Button1_register" BackColor="#4dae3c" runat="server" Text="Register Me" OnClick="Button1_register_Click" />
        <br />
               </div>
    </form>
        
    </center>


        
</body>
</html>
