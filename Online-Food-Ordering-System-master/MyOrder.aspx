<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyOrder.aspx.cs" Inherits="OFOS.MyOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .b{
    background-color:#00ff21;
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
    background-color:#4dae3c;
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
	background-color:#ffd800;
	color:#f9f9f9;
}

body{
    background:
  linear-gradient(
    rgba(0, 0, 0, 0.8),
    rgba(0, 0, 0, 0.8)
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
	text-shadow: 2px;
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
	background-color: #4dae3c;
	border-radius: 50%;
	border:transparent;
	color:#4dae3c;
	outline-style:none;
}

.button3:hover {
	background-color:#ffd800;
	color:#E9E9E9;
	}
	

.button2 {
	background-color: #4dae3c;
	border-radius: 4px;
}
.button2:hover {
	background-color:#ffd800;
	color:#E9E9E9;
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

    </style>
    <title>My Order</title>
    
</head>
<body>
     <center>
    <form id="form1" runat="server">
           <asp:Button CssClass="b1" Text="Sign Out" ID="b" runat="server" OnClick="LogOut_click" />
           <asp:Button CssClass="b1" Text="Thank You!" ID="b1" runat="server" OnClick="LogOut_click" />
    
      
        <h2><asp:Label Style="float:right; color:white; margin-right:30px;" ID="l" runat="server" />
           <asp:Label ID="l2" Style="float:right; color:white;" Text="Hello&nbsp" runat="server" />
       </h2>
      <br />
     
<br />


        <font size="7" color="#4dae3c">&emsp;&emsp;<b><u>ORDER DETAILS</u></b></font>
        <br />
        <br />
       <h2> <asp:label ID="lbl" runat="server" ForeColor="#4dae3c" /></h2>
        <br /><br />

        <asp:GridView ID="gridorder" DataSourceID="sql1" DataKeyNames="Item_no,Order_Id" 
            CssClass="gridview1"  HeaderStyle-CssClass="header" RowStyle-CssClass="row" runat="server" 
            AutoGenerateColumns="False" OnRowUpdated="gridorder_RowUpdated" OnRowUpdating="gridorder_RowUpdating">
            <Columns>
                <asp:BoundField DataField="Item_name" HeaderText="ITEM NAME" ReadOnly="true" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Bold="true" />
                <asp:BoundField DataField="Price" HeaderText="PRICE" ReadOnly="true"  ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="Quantity" HeaderText="QUANTITY"  ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="Amount" HeaderText="AMOUNT" ReadOnly="true"  ItemStyle-Font-Bold="true" ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="Order_Id" HeaderText="Order_Id" ReadOnly="true" Visible="false"/>
                <asp:BoundField DataField="Item_no" HeaderText="Item_no" ReadOnly="true" Visible="false" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="edit" runat="server" Text="Edit" CommandName="Edit" Style="cursor:pointer"/>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="update" runat="server" Text="Update" CommandName="Update" Style="cursor:pointer"/>
                        <asp:Button ID="cancel" runat="server" Text="Cancel" CommandName="Cancel" Style="cursor:pointer"/>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="delete" runat="server" Text="Delete" CommandName="Delete" Style="cursor:pointer" />
                    </ItemTemplate>
                </asp:TemplateField> 
              

            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="sql1" runat="server"
            ConnectionString= "Data Source=NAMRARATHORE\MSSQLSERVER01;Initial Catalog=CFOS;Integrated Security=True"
            SelectCommand="SELECT im.Item_name,od.Price,od.Quantity,od.Amount,od.Order_Id,od.Item_no
                            FROM [dbo].[Order_Details] od INNER JOIN [dbo].[Item_Master] im 
                             ON od.Item_no=im.Item_no WHERE od.Order_Id=@Order_Id"
            UpdateCommand="UPDATE [dbo].[Order_Details] SET Quantity=@Quantity,
                            Amount = @Quantity * Price WHERE Item_no=@Item_no "
            DeleteCommand="DELETE from [dbo].[Order_Details] 
                        WHERE Item_no=@Item_no AND Order_Id=@Order_Id">
            <UpdateParameters>
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Item_no" Type="Int32" />
            </UpdateParameters>
            
            <SelectParameters>
                <asp:SessionParameter Name="Order_Id" SessionField="order_id"  />                
            </SelectParameters>
 
        </asp:SqlDataSource>
         
        <br />
        <br />
       <h2> <b><asp:Label ID="Label1" runat="server" Text="" OnPreRender="Page_Load" ForeColor="White"></asp:Label>
        </b></h2>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add More Items" OnClick="Button1_Click" CssClass="button button2"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Proceed to Pay" OnClick="Button2_Click" CssClass="button button2" />
        &nbsp;<div style="margin-left: 200px">
            <br />
        </div>
        <br />



    </form>
        </center>
</body>
</html>
