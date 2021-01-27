<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="DemoPro.MyAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
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
    color:  #4c565e;
    font-size: 24px;
    padding: 0 10px 15px;
    border-bottom: 2px solid #6caee0;
    margin: 0;
}

.form-basic .form-row > label span{
    display: inline-block;
    box-sizing: border-box;
    color: #5F5F5F;
    width: 180px;
    text-align: right;
    vertical-align: top;
    padding: 12px 25px;
}

.form-basic input{
    color:  #4cff00;
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
    background-color:  #4cff00;
    color: #ffffff;
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

textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px;
    border-radius: 1px;
    background-color:#595959;
    font-size: 16px;
    resize: none;
}
</style>
    <title>My Account</title>
   

</head>
<body>
    <center>
        <form id="form1" runat="server">    
            <br />
            <asp:Button CssClass="b1" Text="Sign Out" ID="b" runat="server" OnClick="Logout1_click" />
            <asp:Button CssClass="b1" Text="Go Back" ID="btn_back" runat="server" OnClick="goBack_click" />
           
            <br /><br /><br />
            <asp:DetailsView ID = "AccDetails" runat = "server" AutoGenerateRows = "False" DataSourceID = "sql1" 
                onDataBound="AccDetails_DataBound" onItemUpdating="AccDetails_ItemUpdating"
                 CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <Fields>
                    <asp:BoundField DataField = "Username" HeaderText = "Username" ReadOnly = "True" />
                    
                    <asp:Templatefield HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="lblpwd" runat="server" Text='<%#Eval("Password") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Textbox ID="tbpwd" runat="server" />
                            <asp:RequiredFieldValidator id="rfv1" runat="server" ErrorMessage="Please provide password." ControlToValidate="tbpwd" />
                        </EditItemTemplate>
                    </asp:Templatefield>

                    <asp:Templatefield HeaderText="Email ID">
                        <ItemTemplate>
                            <asp:Label ID="lblemail" runat="server" Text='<%#Eval("Email") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Textbox ID="tbemail" runat="server" />
                            <asp:RegularExpressionValidator id="rev_email" runat="server" ErrorMessage="Your email is not in the correct format." 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="tbemail" />
                        </EditItemTemplate>
                    </asp:Templatefield>
                    
                    <asp:Templatefield HeaderText="Contact No">
                        <ItemTemplate>
                            <asp:Label ID="lblcnt" runat="server" Text='<%#Eval("Contact_no") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Textbox ID="tbcnt" runat="server" />
                            <asp:RegularExpressionValidator ID="rev_contact" runat="server" ControlToValidate="tbcnt" 
                                ValidationExpression="[0-9]{10}" ErrorMessage="Please enter upto 10 digits." />
                        </EditItemTemplate>
                    </asp:Templatefield>

                    <asp:BoundField DataField = "House_no" HeaderText = "Your House_no" />
                    <asp:BoundField DataField = "Street" HeaderText = "Your Street" />
                  
                    <asp:TemplateField HeaderText="City">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("City") %>' />
                        </ItemTemplate>                        
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlcity" runat="server">
                                 <asp:ListItem>Lahore</asp:ListItem>
                                 <asp:ListItem>Karachi</asp:ListItem>
                                 <asp:ListItem>Faisalabad</asp:ListItem>
                                 <asp:ListItem>Rawalpindi</asp:ListItem>
                                 <asp:ListItem>Multan</asp:ListItem>
                                 <asp:ListItem>Gujranwala</asp:ListItem>
                                 <asp:ListItem>Hyderabad</asp:ListItem>
                                 <asp:ListItem>Peshawar</asp:ListItem>
                                 <asp:ListItem>Islamabad</asp:ListItem>
                                 <asp:ListItem>Sukkur</asp:ListItem>
                                 <asp:ListItem>Bahawalpur</asp:ListItem><asp:ListItem>Faisalabad</asp:ListItem>
                                 <asp:ListItem>Quetta</asp:ListItem>
                                 <asp:ListItem>Dera Ghazi Khan</asp:ListItem>
                                 <asp:ListItem>Gujrat</asp:ListItem>
                                 <asp:ListItem>Sheikhupura</asp:ListItem>
                                 <asp:ListItem>Jhelum</asp:ListItem>
                                 <asp:ListItem>Daska</asp:ListItem>
                                 <asp:ListItem>Shikarpur</asp:ListItem>
                                 <asp:ListItem>Umerkot</asp:ListItem>
                                 <asp:ListItem>Ferozwala</asp:ListItem>
                                 <asp:ListItem>Chakwal</asp:ListItem>
                            </asp:DropDownList> 
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField ShowEditButton="True" ButtonType="Button" ControlStyle-BackColor="#299e37"/>
                </Fields>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:DetailsView>

            <asp:Sqldatasource ID="sql1" runat="server" 
            ConnectionString="Data Source=NAMRARATHORE\MSSQLSERVER01;AttachDbFilename=
                CFOS;Integrated Security=True"
            SelectCommand="select Username, Password, Email, Contact_no, House_no, Street, City from [dbo].[Customers]
                 where Username=@Username"
            UpdateCommand="update [dbo].[Customers] set Password=@Password, Email=@Email, Contact_no=@Contact_no,
                 House_no=@House_no, Street=@Street, City=@City where Username=@Username">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="user" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Contact_no" Type="String" />
                    <asp:Parameter Name="House_no" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:SessionParameter Name="Username" SessionField="user" />
                </UpdateParameters>
            </asp:Sqldatasource>

            <br /><br />
            <asp:Label ID="lbl1" runat="server" Text="" ForeColor="white"></asp:Label>
        </form>
     </center>
</body>
</html>
