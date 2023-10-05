<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
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

<div class="main">

 </div>
  <body>
    
    <div id="mySidenav" class="sidenav">
    <p class="logo"><span>TOPG</span>-COUTURE</p>
    <a href="adminPanel" class="icon-a"><i class="fa fa-dashboard icons"></i>   Dashboard</a>
    <a href="#"class="icon-a"><i class="fa fa-users icons"></i>   Customers</a>
    <a href="#"class="icon-a"><i class="fa fa-shopping-bag icons"></i>   Orders</a>
    <a href="productOption.jsp"class="icon-a"><i class="fa fa-product-hunt icons"></i>   Product</a>
    <a href="#" onclick="logout()"><i class="uil uil-signout"></i>Sign out</a>
    <form id="logoutForm" action="${pageContext.request.contextPath}/LogoutServlet" method="post"></form>
    
  
  </div>
  <div id="main">

    <div class="head">
      <div class="col-div-6">
  <span style="font-size:30px;cursor:pointer; color: black;" class="nav"  >☰ Dashboard</span>
  <span style="font-size:30px;cursor:pointer; color: black;" class="nav2"  >☰ Dashboard</span>
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
        <p>Customers <span>Info</span></p>
        <br/>
        
    <table>
    <tr>
      <th>Username</th>
      <th>Address</th>
      <th>Phone</th>
      <th>Email</th>
    </tr>
    <tr>
    <% 
       	   try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/top-couture";
            Connection con = DriverManager.getConnection(url, "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT  username, address, phone, email FROM user WHERE role = 'Customer'");
            while (rs.next()) {
                
                String username = rs.getString("username");
                String address = rs.getString("address");
                String phone = rs.getString("phone");
                String email = rs.getString("email");
                
                
 %>
      <td><%= username %></td>
      <td><%= address %></td>
      <td><%= phone %></td>
      <td><%= email %></td>
    </tr>
    <% 
	}
      rs.close();
            stmt.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        %>
    
    
  </table>
  
      </div>
    </div>
    </div>

    
      
    <div class="clearfix"></div>
  </div>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>

    $(".nav").click(function(){
      $("#mySidenav").css('width','70px');
      $("#main").css('margin-left','70px');
      $(".logo").css('visibility', 'hidden');
      $(".logo span").css('visibility', 'visible');
       $(".logo span").css('margin-left', '-10px');
       $(".icon-a").css('visibility', 'hidden');
       $(".icons").css('visibility', 'visible');
       $(".icons").css('margin-left', '-8px');
        $(".nav").css('display','none');
        $(".nav2").css('display','block');
    });

  $(".nav2").click(function(){
      $("#mySidenav").css('width','300px');
      $("#main").css('margin-left','300px');
      $(".logo").css('visibility', 'visible');
       $(".icon-a").css('visibility', 'visible');
       $(".icons").css('visibility', 'visible');
       $(".nav").css('display','block');
        $(".nav2").css('display','none');
   });

  </script>


  </body>


  </html>