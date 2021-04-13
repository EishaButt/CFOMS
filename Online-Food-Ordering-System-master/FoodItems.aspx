<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodItems.aspx.cs" Inherits="OFOS.FoodItems" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        
/*--------------------------------------------------------------
# Why Us
--------------------------------------------------------------*/
.why-us{
    height:592px;
    width:1324px;
    background-color:#f8f9fa;
}
@media (min-width: 768px){
.section {
    padding: 9rem 0;
}
}
@media (min-width: 992px)
{
 .container {
    max-width: 960px;
}
}

.roww {
    margin-right: -15px;
    margin-left: -15px;
     border-bottom: solid 1px transparent;
    -moz-box-sizing: border-box;
    /* -webkit-box-sizing: border-box; */
    box-sizing: border-box;
    display: flex;
    flex-wrap: wrap;
}
.roow, .rrow {
     width:1324px;
    margin-right: -15px;
    margin-left: -15px;
     border-bottom: solid 1px transparent;
    -moz-box-sizing: border-box;
    /* -webkit-box-sizing: border-box; */
    box-sizing: border-box;
    display: flex;
    flex-wrap: wrap;
}
        .rrow {
          width:1324px;
  
     border-bottom: solid 1px transparent;
    -moz-box-sizing: border-box;
    /* -webkit-box-sizing: border-box; */
    box-sizing: border-box;
    display: flex;
    flex-wrap: wrap;
        }
.why-us .box {
	padding: 50px 30px;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
	transition: all ease-in-out 0.3s;
	background: #ffffff;
}

	.why-us .box span {
		display: block;
		font-size: 28px;
		font-weight: 700;
		color: #1a1814;
	}

	.why-us .box h4 {
		font-size: 24px;
		font-weight: 600;
		padding: 0;
		margin: 20px 0;
		color: #413418;
	}

	.why-us .box p {
		color: #aaaaaa;
		font-size: 15px;
		margin: 0;
		padding: 0;
	}

	.why-us .box:hover {
		background: #fed136;
		padding: 30px 30px 70px 30px;
		box-shadow: 10px 15px 30px rgba(0, 0, 0, 0.18);
	}

		.why-us .box:hover span, .why-us .box:hover h4, .why-us .box:hover p {
			color: #fff;
		}

        .b{
    background-color:#fed136;
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
    background-color:#fed136;
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
	color:#fed136;
}

body{
    background:
  linear-gradient(
    rgba(0, 0, 0, 0.9),
    rgba(0, 0, 0, 0.9)
  ),
  url("../assets/Images/cook_02.jpg");
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
}

.row{
    height:30px;
    width:32%;
	color:#4dae3c;
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
    color: black;
    font-size:15px;
    background:#E9E9E9;
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
    background-color:#4dae3c;
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
.footer {
  text-align: center;
  font-size: 0.9rem;
  font-family: "Montserrat", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
}

.page-section {
    padding: 6rem 0;
}
.team{
    height:828px;
    width:1324px;
    background-color:rgba(248, 249, 250, 0.88);
}

.footer{
  background-position:bottom;

    height:0px;
    width:1324px;
}

	header.masthead {
    padding-top: 10.5rem;
    padding-bottom: 6rem;
    text-align: center;
    color: #fff;
    background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url("../assets/Images/b.jpg");
    background-repeat: no-repeat;
    background-attachment: scroll;
    background-position: center center;
    background-size: cover;
}
header.masthead .masthead-subheading {
  font-size: 1.5rem;
  font-style: italic;
  line-height: 1.5rem;
  margin-bottom: 25px;
  font-family: "Droid Serif", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
}
header.masthead .masthead-heading {
  font-size: 3.25rem;
  font-weight: 700;
  line-height: 3.25rem;
  margin-bottom: 2rem;
  font-family: "Montserrat", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
}

@media (min-width: 768px) {
  header.masthead {
    padding-top: 17rem;
    padding-bottom: 12.5rem;
  }
  header.masthead .masthead-subheading {
    font-size: 2.25rem;
    font-style: italic;
    line-height: 2.25rem;
    margin-bottom: 2rem;
  }
  header.masthead .masthead-heading {
    font-size: 4.5rem;
    font-weight: 700;
    line-height: 4.5rem;
    margin-bottom: 4rem;
  }
}
body {
  overflow-x: hidden;
}
.containeer {
	padding-right: 0px;
	padding-left: 200px;
	margin-right: auto;
	margin-left: auto;
}
/*more btn*/
.btn-xl {
    padding: 1.25rem 2.5rem;
    font-family: "Montserrat", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-size: 1.125rem;
    font-weight: 700;
}
.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
}
.btn-primary {
    color: #fff;
    background-color: #fed136;
    border-color: #fed136;
}
a {
    text-decoration: none;
}
.btn {
    display: inline-block;
    /* font-weight: 400; */
    /* color: #212529; */
    text-align: center;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    /* background-color: transparent; */
    border: 1px solid transparent;
    /* padding: 0.375rem 0.75rem; */
    /* font-size: 1rem; */
    line-height: 1.5;
    border-radius: 0.25rem;
    transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.text-center {
    text-align: center !important;
    color:cornsilk;
}
.page-section h2.section-heading {
    font-size: 2.5rem;
    margin-top: 0;
    margin-bottom: 0rem;
}
.text-uppercase {
    text-transform: uppercase !important;
}
.page-section h3.section-subheading {
    font-size: 2rem;
    font-weight: 400;
    font-style: italic;
    font-family: "Droid Serif", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    margin-bottom: 2rem;
}
.text-muted {
    color: #6c757d !important;
}
.col-lg-4{
    position: relative;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 15px;
}
.roww > * {
    padding: 0 0 0 3em;
}
.roow > * {
    padding: 0 0 0 3em;
}
.rrow > * {
    padding: 0 0 0 18em;
}
        @media (min-width: 992px) {
            .col-lg-4 {
                flex: 0 0 33.3333333333%;
                max-width: 33.3333333333%;
            }
        }
        .team-member {
  margin-bottom: 3rem;
  text-align: center;
}
.team-member img {
  width: 14rem;
  height: 14rem;
  border: 0.5rem solid rgba(0, 0, 0, 0.1);
}
.team-member h4 {
  margin-top: 1.5rem;
  margin-bottom: 0;
}
.mx-auto {
    margin-left: auto !important;
    margin-right: auto !important;
}
.rounded-circle {
    border-radius: 50% !important;
}
.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
}
.btn-social {
    height: 2.5rem;
    width: 2.5rem;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    border-radius: 100%;
}
.mx-2 {
    margin-left: 0.5rem !important;
        margin-right: 0.5rem !important;
}
.btn-dark {
    color: #fff;
    background-color: #343a40;
    border-color: #343a40;
}
svg:not(:root).svg-inline--fa {
    overflow: visible;
}
.svg-inline--fa.fa-w-16 {
    width: 1em;
}
.svg-inline--fa {
    display: inline-block;
    font-size: inherit;
    height: 1em;
    /* overflow: visible; */
    vertical-align: -.125em;
}
.col-lg-8{
        position: relative;
    min-height: 1px;
    padding-right: 15px;
    padding-left: 15px;
}
.text-muted {
    color: #6c757d !important;
}

/*gallery*/
.contanineer {
  position: relative;
  flex-grow: 1;
  margin: auto;
  max-width: 1200px;
  max-height: 1200px;
  display: grid;
  grid-template-columns: repeat(8, 1fr);
  grid-template-rows: repeat(4, 1fr);
  grid-gap: 2vmin;
  justify-items: center;
  align-items: center;
}
 
.image {
  z-index: 1;
  grid-column: span 2;
  max-width: 100%;
  margin-bottom: -52%;
  -webkit-clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
          clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
  -webkit-transform: scale(1);
          transform: scale(1);
  transition: all .25s;
}
.image:nth-child(7n + 1) {
  grid-column: 2 / span 2;
}
.image:hover {
  z-index: 2;
  -webkit-transform: scale(2);
          transform: scale(2);
}
    </style>
    <title>Home Page</title>

</head>
<body>
    <center>
        <h1><asp:Label Style="color:#fed136;" ID="status" runat="server" Visible="false" /></h1>
        <h1><asp:Label Style="color:#fed136;" ID="status1" runat="server" Visible="false" /></h1>
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
          <h1 style="margin-left:20px;"><span style="color:#fed136;">C</span><span style="color:white;">F</span><span style="color:#4dae3c;">M</span><span style="color:white;">O</span><span style="color:#fed136;">S</span></h1>
     
        <asp:Label Style="color:#4dae3c; margin-left:100px; font-variant-caps:small-caps;" ID="sizlr" runat="server" Visible="false" />
            
           
            <!-- Masthead-->
    <header id="mainback" class="masthead">
      
            <div class="masthead-subheading">Welcome To Canteen Food Management and Ordering System!</div>
            <div class="masthead-heading text-uppercase">C<span style="color: #fed136">F</span>M<span style="color: #fed136">O</span>S </div>
       
    </header>
         
       <br /><br />
             <div class="text-center">
                <h2 class="section-heading text-uppercase" style="font-size:xxx-large">Food Categories</h2>
                <h3 class="section-subheading text-muted" >Different Food Categories are given!</h3>
            </div>
       <asp:Button CssClass="b" ID="Button_soup" runat="server" Text="SOUP" OnClick="Button_soup_onclick"/>
       <asp:Button CssClass="b" ID="Button_starter" runat="server" Text="STARTER" OnClick="Button_starter_onclick"/>
       <asp:Button CssClass="b" ID="Button_rice" runat="server" Text="RICE" OnClick="Button_rice_onclick"/>
       <asp:Button CssClass="b" ID="Button_noodles" runat="server" Text="NOODLES" OnClick="Button_noodles_onclick"/>
       <asp:Button CssClass="b" ID="Button_MainCourse" runat="server" Text="MAIN COURSE" OnClick="Button_maincourse_onclick"/>
       <asp:Button CssClass="b" ID="Button_dessert" runat="server" Text="DESSERT" OnClick="Button_dessert_onclick"/>

       <br /><br /><br />
     <center>
        <div class="w3-content w3-section" style="max-width:1050px" id="pic" runat="server" >
            <br />
            
        <img class="mySlides w3-animate-fading" src="assets\Images\cappuccino-coffee-cup.jpg"  height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\man.jpg" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\szh_f.JPG" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\rice.PNG" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="assets\Images\Strawberry-Milkshake-5.jpg" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\schewan-vegetables.jpg" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\choco.jpg" height="450px" width="950px" />
        <img class="mySlides w3-animate-fading" src="PIC\manchurian.jpg" height="450px" width="950px" />
         <img class="mySlides w3-animate-fading" src="PIC\c_v.jpg" height="450px" width="950px" />
              
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
             <!-- ======= Why Us Section ======= -->
    <section id="why-us" class="why-us">
        <div class="container">
            <br />
            <div class="section-title">
                <h2 style="font-size:xx-large; color:#1a1814; margin-left:40px">Why Us____</h2>
                <p style="color:darkgrey;margin-left:40px">Why Choose Our Canteen</p>
            </div>

            <div class="roww">

                <div class="col-lg-4 mt-4 mt-lg-0">
                    <div class="box">
                        <span>01</span>
                        <h4>Dedicated Team</h4>
                        <p>We are the team of dedicated professionals, in pursuit to do whatever it takes to make your days unforgettable.</p>
                    </div>
                </div>
              
                <div class="col-lg-4 mt-4 mt-lg-0">
                    <div class="box">
                        <span>02</span>
                        <h4>Order Accuracy</h4>
                        <p>We provide Greet customers services and approach them in a way that is natural and fits the individual situation.</p>
                    </div>
                </div>

                <div class="col-lg-4 mt-4 mt-lg-0">
                    <div class="box">
                        <span>03</span>
                        <h4> Customer Needs</h4>
                        <p>We make Customer Happy by ensuring great service and respect them. Our Customer is everything to us.<br /></p>
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Why Us Section -->
             <!-- Team-->
    <section class="page-section team" id="team">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase" style="margin-left:370px;color:#1a1814">Our Amazing Team</h2>
                <h4 class="section-subheading text-muted" style="margin-left:370px">We Love to Work Togather</h4>
            </div>
            <div class="roow">
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="assets/Images/team/Eisha.jpg" alt="" />
                        <h4 style="font-weight:bolder; font-size:1.75em">Eisha Nawaz</h4>
                        <p class="text-muted">Computer Scientist</p>
                        <a class="btn btn-dark btn-social mx-2" href="https://github.com/EishaButt"><svg class="svg-inline--fa fa-github fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-twitter fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-facebook-f fa-w-10" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook-f" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-linkedin-in fa-w-14" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg></a>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="assets/Images/team/Khansa.jpg" alt="" />
                        <h4 style="font-weight:bolder; font-size:1.75em">Khansa Khaliq</h4>
                        <p class="text-muted">Computer Scientist</p>
                         <a class="btn btn-dark btn-social mx-2" href="https://github.com/Khansa-Khaliq"><svg class="svg-inline--fa fa-github fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-twitter fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-facebook-f fa-w-10" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook-f" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-linkedin-in fa-w-14" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg></a>

                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="team-member">
                        <img class="mx-auto rounded-circle" src="assets/Images/team/muskan.png" alt="" />
                        <h4 style="font-weight:bolder; font-size:1.75em">Muskan Asif</h4>
                        <p class="text-muted">Computer Scientist</p>
                        <a class="btn btn-dark btn-social mx-2" href="https://github.com/muskanrafi44"><svg class="svg-inline--fa fa-github fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-twitter fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-facebook-f fa-w-10" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook-f" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-linkedin-in fa-w-14" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg></a>

                    </div>
                </div>
            </div>
            <div class="roww">
                <div class="col-lg-8 mx-auto text-center">
                    <p class="large text-muted" style="line-height: 1.75;margin-top: 0;
    margin-bottom: 1rem; margin-left:400px">
                        We Are a Group Of People Who Love Creativity, Design, Technology And Thinking Differently. Innovation Excites Us And We’re Driven To Keep Moving Forward. We Want To Take You Into A Better Future. &nbsp;
                        We Can Turn Amazing Possiblities Into Impactful Realities.
                    </p>
                </div>
            </div>
        </div>
    </section>
       
             <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery">

        <div class="container">
            <div class="section-title">
                <h2 style="font-size:xx-large; color:#fffaf0; margin-left:40px">Gallery</h2>
                <p class="text-muted" style=" margin-left:40px">Some photos of Dishes From Our Canteen</p>
            </div>
        </div>
       
<div class="contanineer">
  <img class="image" src="https://source.unsplash.com/random/600x600?food" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?meal" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?drink" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?beverage" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?dinner" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?lunch" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?salad" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?pizza" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?sandwich" alt="">
  <img class="image" src="https://source.unsplash.com/random/600x600?burger" alt="">
</div>
 
     
    </section><!-- End Gallery Section -->

    </form>
         
    <!-- Footer-->
    <footer class="footer py-4" style=" color:#ffffff">
        <div class="container">
            <div class="rrow align-items-center">
                <div class="col-lg-4 text-lg-left" style="margin-top:10px">Copyright © CFMOS 2020</div>
                <div class="col-lg-4 my-3 my-lg-0" >
                   <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-twitter fa-w-16" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-facebook-f fa-w-10" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook-f" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M279.14 288l14.22-92.66h-88.91v-60.13c0-25.35 12.42-50.06 52.24-50.06h40.42V6.26S260.43 0 225.36 0c-73.22 0-121.08 44.38-121.08 124.72v70.62H22.89V288h81.39v224h100.17V288z"></path></svg></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!"><svg class="svg-inline--fa fa-linkedin-in fa-w-14" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.28 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.58 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.28 61.9 111.28 142.3V448z"></path></svg></a>

                </div>
               
            </div>
        </div>
    </footer>
        </div>
</body>
</html>

