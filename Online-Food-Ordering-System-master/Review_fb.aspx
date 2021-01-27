<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review_fb.aspx.cs" Inherits="OFOS.Review_fb" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">

    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
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
    background: #fed136;
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
    text-indent: 30px;
    line-height: 40px;
}

.sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #fff;
    font-size:18px;
}

.sidebar-nav li a:hover {
    text-decoration: none;
    color: #808080;
    background: #fff;
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
    color: #ff006e;
}

.sidebar-nav > .sidebar-brand a:hover {
    color: #808080;
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
    <title>Review Feedback</title>

    <!-- Bootstrap Core CSS -->
    <link href="sidebar/css/bootstrap.min.css" rel="stylesheet"/>

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
                    
                        <font color="#14a80c"><u><b>ADMIN FEATURES</b></u></font>
                    
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
  
        <center><h1>REVIEW FEEDBACK</h1></center>

    
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <center>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True"
             PageSize="6"  CellSpacing="10" CellPadding="10" DataKeyNames="Cmt_no"
             HeaderStyle-ForeColor="#3DFF33" AutoGenerateColumns="False" 
            CssClass="table" PagerStyle-CssClass="gridViewPager" PagerStyle-HorizontalAlign="Center">
           <Columns>
                <asp:BoundField HeaderText="CMT NO" DataField="Cmt_no" InsertVisible="False" ReadOnly="True" SortExpression="Cmt_no" />
                <asp:BoundField HeaderText="CUST ID" DataField="Cust_Id" ReadOnly="True" SortExpression="Cust_Id" />
                <asp:BoundField HeaderText="USERNAME" DataField="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField HeaderText="COMMENT" DataField="Comment" ReadOnly="True" SortExpression="Comment" />
                <asp:BoundField HeaderText="CREDITS" DataField="Credits" SortExpression="Comment" />
                
               <asp:CommandField ShowEditButton="true" />
               
           </Columns>
       </asp:GridView>
    </center>
  
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=NAMRARATHORE\MSSQLSERVER01;Initial Catalog=CFOS;Integrated Security=True" 
            SelectCommand="SELECT [Cmt_no], [Cust_Id], [Username], [Comment], [Credits] FROM [Feedback]" 
            UpdateCommand="UPDATE [Feedback] SET Credits=@Credits WHERE Cmt_no=@Cmt_no" >

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
