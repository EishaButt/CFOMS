<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modify.aspx.cs" Inherits="OFOS.Modify" %>

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<style>

 body {
    overflow-x: hidden;
 }

/* Toggle Styles */

#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled {
    padding-left: 250px;
}

#sidebar-wrapper {
    z-index: 1000;
    position: fixed;
    left: 250px;
    width: 0;
    height: 100%;
    margin-left: -250px;
    overflow-y: auto;
    background: #000;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled #sidebar-wrapper {
    width: 250px;
}

#page-content-wrapper {
    width: 100%;
    position: absolute;
    padding: 15px;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -250px;
}

/* Sidebar Styles */

.sidebar-nav {
    position: absolute;
    top: 0;
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar-nav li {
    text-indent: 20px;
    line-height: 40px;
}

.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999999;
}

.sidebar-nav li a:hover {
    text-decoration: none;
    color: #fff;
    background: rgba(255,255,255,0.2);
}

.sidebar-nav li a:active,
.sidebar-nav li a:focus {
    text-decoration: none;
}

.sidebar-nav > .sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
}

.sidebar-nav > .sidebar-brand a {
    color: #999999;
}

.sidebar-nav > .sidebar-brand a:hover {
    color: #fff;
    background: none;
}

@media(min-width:768px) {
    #wrapper {
        padding-left: 250px;
    }

    #wrapper.toggled {
        padding-left: 0;
    }

    #sidebar-wrapper {
        width: 250px;
    }

    #wrapper.toggled #sidebar-wrapper {
        width: 0;
    }

    #page-content-wrapper {
        padding: 20px;
        position: relative;
    }

    #wrapper.toggled #page-content-wrapper {
        position: relative;
        margin-right: 0;
    }
}
        th
        {
            text-align:center;
            font-size:medium;

        }

        gridViewPager td
        {
            padding:0 10px;
            width:auto;
        }
</style>
    <title>Modify</title>

    <!-- Bootstrap Core CSS -->
    <link href="sidebar/css/bootstrap.min.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            
            <ul class="sidebar-nav">
               
                <li class="sidebar-brand">
                    
                         <font color="#3DFF33"><u><b>ADMIN FEATURES</b></u></font>
                   
                </li>
                <li>
                    <a href="Update_Menu.aspx">Update Menu</a>
                </li>
                <li>
                    <a href="Manage_COD.aspx">Manage COD</a>
                </li>
                <li>
                    <a href="Review_fb.aspx">Review Feedback</a>
                </li>
                <li>
                    <a href="AdminSearch.aspx">Search</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                         
         <form id="form1" runat="server">
             
        <p style="margin-left:950px">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton>
             
        </p>
        
   
   
        <div>
        <br />
        <center><h1>MODIFY EXISTING ITEM(S)</h1></center>

    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" CssClass="table"  AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" DataKeyNames="Item_no" AllowPaging="true" PageSize="9" 
            HeaderStyle-ForeColor="#3DFF33" CellSpacing="10" CellPadding="12" 
             PagerStyle-CssClass="gridViewPager" PagerStyle-HorizontalAlign="Center" >
            <Columns>
                <asp:BoundField DataField="Item_no" HeaderText="ITEM NO" ReadOnly="True" SortExpression="Item_no" />
                <asp:BoundField DataField="Item_name" HeaderText="ITEM NAME" SortExpression="Item_name" />
                <asp:BoundField DataField="Price" HeaderText="PRICE" SortExpression="Price" />
                <asp:BoundField DataField="Type" HeaderText="TYPE" SortExpression="Type" />
                <asp:BoundField DataField="Description" HeaderText="DESCRIPTION" SortExpression="Description" />
                <asp:BoundField DataField="Image_url" HeaderText="IMAGE URL"  SortExpression="Image_url"/>
                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
            </Columns>

        </asp:GridView>  
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=NAMRARATHORE\MSSQLSERVER01;AttachDbFilename= E:\Online-Food-Ordering-System-master\Online-Food-Ordering-System-master\Online-Food-Ordering-System-master\App_Data\ofos.mdf;Integrated Security=True" 
            SelectCommand="SELECT * FROM [Item_Master]" 
            UpdateCommand="UPDATE [Item_Master] SET Item_name=@Item_name, Price=@Price, 
            Description=@Description, Image_url=@Image_url, Type=@Type WHERE Item_no=@Item_no" 
            DeleteCommand="DELETE FROM [Item_Master] WHERE Item_no=@Item_no">

        </asp:SqlDataSource>
    </div>
    </form>
                             </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="sidebar/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="sidebar/js/bootstrap.min.js"></script>

</body>
</html>

