<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodItems.aspx.cs" Inherits="OFOS.FoodItems" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
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

    </style>
    <title>Home Page</title>

</head>
<body>
    <center>
        <h1><asp:Label Style="color:#00ccff;" ID="status" runat="server" Visible="false" /></h1>
        <h1><asp:Label Style="color:#00ccff;" ID="status1" runat="server" Visible="false" /></h1>
    </center>           

    <div id="home" runat="server" >
        <form id="form1" runat="server">

        <asp:Button CssClass="b1" Text="Sign out" ID="b" runat="server" OnClick="LogOut_click" />
        <asp:Button CssClass="b1" Text="Thank You!" ID="b1" runat="server" OnClick="LogOut_click" />

            <div class="dropdown" runat="server" visible="false" id="dropdown" style="float:right">
                <button class="dropbtn">
                    <asp:Label Style="float:right; color:white" ID="u" runat="server" Font-Bold="true" />
                    <asp:Label ID="h" Style="float:right; color:white" Text="Hello&nbsp" runat="server" Font-Bold="true" />
                </button>
                <div class="dropdown-content">
                    <a href="MyAccount.aspx">My Account</a>
                    <a href="Feedback.aspx">Feedback</a>
                </div>
            </div>

       <asp:Button CssClass="b1"  id="my_order" Text="My Order" OnClick="MyOrder_click" runat="server" Visible="false" />
       <asp:Button CssClass="b1"  id="hl" Text="Sign in" OnClick="signin_click" runat="server" />
       <asp:Button ID="Register" runat="server" Text="Register" Visible="false"  CssClass="b1" OnClick="Register_Click" />
         <h2><asp:Label Style="float:right; color:white; margin-right:30px;" ID="Label1" runat="server" Font-Bold="true" Visible="false" />
             <asp:Label ID="Label2" Style="float:right; color:white" Text="Hello&nbsp" runat="server" Font-Bold="true" Visible="false" />
         </h2>      
            <asp:Image ID="i" runat="server" ImageUrl="PIC\logo.png" Width="350px"  Height="150px"/>
       <center>&emsp;&emsp;
        <h1><asp:Label Style="color:#00ccff; margin-left:100px; font-variant-caps:small-caps;" ID="sizlr" runat="server" Visible="false" /></h1></center>

       <br /><br />

       <asp:Button CssClass="b" ID="Button_soup" runat="server" Text="SOUP" OnClick="Button_soup_onclick"/>
       <asp:Button CssClass="b" ID="Button_starter" runat="server" Text="STARTER" OnClick="Button_starter_onclick"/>
       <asp:Button CssClass="b" ID="Button_rice" runat="server" Text="RICE" OnClick="Button_rice_onclick"/>
       <asp:Button CssClass="b" ID="Button_noodles" runat="server" Text="NOODLES" OnClick="Button_noodles_onclick"/>
       <asp:Button CssClass="b" ID="Button_MainCourse" runat="server" Text="MAIN COURSE" OnClick="Button_maincourse_onclick"/>
       <asp:Button CssClass="b" ID="Button_dessert" runat="server" Text="DESSERT" OnClick="Button_dessert_onclick"/>

       <br /><br /><br />
     <center>
        <div class="w3-content w3-section" style="max-width:550px" id="pic" runat="server" >
            <br />
            <center>
        <img class="mySlides w3-animate-fading" src="PIC\noodles.jpg"  height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\man.jpg" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\szh_f.JPG" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\rice.PNG" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\chop.PNG" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\schewan-vegetables.jpg" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\choco.jpg" height="450px" width="550px" />
        <img class="mySlides w3-animate-fading" src="PIC\manchurian.jpg" height="450px" width="550px" />
         <img class="mySlides w3-animate-fading" src="PIC\c_v.jpg" height="450px" width="550px" />
                </center>
        </div>

        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) {myIndex = 1}
            x[myIndex-1].style.display = "block";
            setTimeout(carousel, 3000);
            }
        </script>

        </center>
        <asp:GridView ID="griditem" CssClass="gridview" HeaderStyle-CssClass="header" 
           RowStyle-CssClass="row" runat="server" AutoGenerateColumns="false"
           CellSpacing="10" CellPadding="12" HeaderStyle-Font-Bold="true">
            <Columns>
               
                <asp:BoundField DataField="Item_no" HeaderText="ITEM NO" ReadOnly="true" SortExpression="Item_no" />
                <asp:BoundField DataField="Item_name" HeaderText="ITEM NAME" ReadOnly="true" SortExpression="Name"  ItemStyle-Font-Bold="true" />
                <asp:BoundField DataField="Description" HeaderText="DESCRIPTION"  ReadOnly="true" SortExpression="Description" />
                <asp:ImageField DataImageUrlField="Image_url" ControlStyle-Width="120" 
                    ControlStyle-Height ="120" HeaderText = "IMAGE"  ItemStyle-HorizontalAlign="Center"/>
                <asp:BoundField DataField="Price"  HeaderText="PRICE" ItemStyle-HorizontalAlign="Center" 
                    ReadOnly="true" SortExpression="Price" ItemStyle-Font-Bold="true" ItemStyle-Font-Size="Large"/>
          
                <asp:TemplateField HeaderText="QUANTITY" ItemStyle-HorizontalAlign="Center"  ItemStyle-Font-Bold="true">
                    <ItemTemplate>
                        <asp:TextBox ID="tb_quantity" runat="server" TextMode="number" Width="70" />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="<img src='error.png' width='25' height='25' />"
                             ControlToValidate="tb_quantity" Type="Integer" MinimumValue="1" MaximumValue="10" />                                         
                    </ItemTemplate>
                </asp:TemplateField>
          
                
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="l1" Text="Added to Cart" runat="server"  Visible="false"/>
                        <asp:Button ID="button_cart" runat="server" Text="Add To Cart" 
                            OnClick="griditem_Click" CssClass="button button3" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>       
    </form>
        </div>
</body>
</html>

