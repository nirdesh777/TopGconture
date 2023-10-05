<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!Doctype HTML>
  <html>
  <head>
    <title></title>
    <link rel="stylesheet" href="../css/adminPanel.css" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <script>
		function logout() {
			 // Submit the logout form
			document.getElementById("logoutForm").submit();
		}
	</script>
  </head>


  <body>
    
    <div id="mySidenav" class="sidenav">
    <p class="logo"><span>TOPG</span>-COUTURE</p>
    <a href="adminPanel.jsp" class="icon-a"><i class="fa fa-dashboard icons"></i>   Dashboard</a>
    <a href="Customers.jsp"class="icon-a"><i class="fa fa-users icons"></i>   Customers</a>
    <a href="#"class="icon-a"><i class="fa fa-shopping-bag icons"></i>   Orders</a>
    <a href="productOption.jsp"class="icon-a"><i class="fa fa-product-hunt icons"></i>   Product</a>
    <a href="#" onclick="logout()"><i class="uil uil-signout"></i>Sign out</a>
    <form id="logoutForm" action="${pageContext.request.contextPath}/LogoutServlet" method="post"></form>
    
  
  </div>
  <div id="main">

    <div class="head">
      <div class="col-div-6">
  <span style="font-size:30px;cursor:pointer; color: black;">☰ Dashboard</span>
  <span style="font-size:30px;cursor:pointer; color: black;">☰ Dashboard</span>
  </div>
    
    <div class="col-div-6">
    <div class="profile">

      <img src="at.png" class="pro-img" />
      <p><b>Andrew Tate </b><span>Admin</span></p>
    </div>
  </div>
    <div class="clearfix"></div>
  </div>

    <div class="clearfix"></div>
    <br/>
    
    <div class="col-div-3">
      <div class="box">
        <p>67<br/><span>Customers</span></p>
        <i class="fa fa-users box-icon"></i>
      </div>
    </div>
    <div class="col-div-3">
      <div class="box">
        <p>88<br/><span>Projects</span></p>
        <i class="fa fa-list box-icon"></i>
      </div>
    </div>
    <div class="col-div-3">
      <div class="box">
        <p>99<br/><span>Orders</span></p>
        <i class="fa fa-shopping-bag box-icon"></i>
      </div>
    </div>
    <div class="col-div-3">
      <div class="box">
        <p>78<br/><span>Tasks</span></p>
        <i class="fa fa-tasks box-icon"></i>
      </div>
    </div>
    <div class="clearfix"></div>
    <br/><br/>
    <div class="col-div-8">
      <div class="box-8">
      <div class="content-box">
        <p>Top Selling Projects <span>Sell All</span></p>
        <br/>
        <table>
    <tr>
      <th>Company</th>
      <th>Contact</th>
      <th>Country</th>
    </tr>
    <tr>
      <td>Alfreds Futterkiste</td>
      <td>Maria Anders</td>
      <td>Germany</td>
    </tr>
    <tr>
      <td>Centro comercial Moctezuma</td>
      <td>Francisco Chang</td>
      <td>Mexico</td>
    </tr>
    <tr>
      <td>Ernst Handel</td>
      <td>Roland Mendel</td>
      <td>Austria</td>
    </tr>
    <tr>
      <td>Island Trading</td>
      <td>Helen Bennett</td>
      <td>UK</td>
    </tr>
    
    
  </table>
      </div>
    </div>
    </div>

    <div class="col-div-4">
      <div class="box-4">
      <div class="content-box">
        <p>Total Sale <span>Sell All</span></p>

        <div class="circle-wrap">
      <div class="circle">
        <div class="mask full">
          <div class="fill"></div>
        </div>
        <div class="mask half">
          <div class="fill"></div>
        </div>
        <div class="inside-circle"> 70% </div>
      </div>
    </div>
      </div>
    </div>
    </div>
      
    <div class="clearfix"></div>
  </div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>

    

  </script>

  </body>


  </html>