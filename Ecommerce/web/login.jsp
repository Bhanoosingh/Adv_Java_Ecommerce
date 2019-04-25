<%@page import="java.sql.ResultSet"%>
<%@page import="com.ecommerce.config.DBConfig"%>
<%@include file="Templates/header.jsp" %>	
<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Login</span></h3>
			</div>
		</div>
	<!--banner-->

	<!--content-->
		<div class="content">
				<!--login-->
			<div class="login">
				<div class="main-agileits">
					<div class="form-w3agile">
						<h3>Login To New Shop</h3>
                                                <% String logout=request.getParameter("logout");
                                                    if(logout!=null){
                                                        session.setAttribute("user", null);
                                                        %>
                                                    <h3 class="bg-success">Logout Successful !</h3>
                                                    <% } %>
						<form action="#" method="post">
							<div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
								<input  type="text" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
								<div class="clearfix"></div>
							</div>
							<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
								<input  type="password" value="Password" name="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
								<div class="clearfix"></div>
							</div>
							<input type="submit" name="btn" value="Login">
						</form>
					</div>
					<div class="forg">
						<a href="#" class="forg-left">Forgot Password</a>
						<a href="registered.jsp" class="forg-right">Register</a>
					<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<!--login-->
		</div>
		<!--content-->
                <% 
                    String btn=request.getParameter("btn");
                    
                    //out.print("<script>alert('Hello')</script>");
                    
                    if(btn !=null){
                        
                        String email=request.getParameter("Email");
                        String password=request.getParameter("Password");
                        
                        user=DBConfig.executeQuery("SELECT * FROM `userdetails` WHERE email='"+email+"' and password='"+password+"'");
                        
                        user.first();
                        
                        
                        
                       // out.print(user.getRow());
                       
                       if(user.getRow()==1){
                           session.setAttribute("user", user);
                           response.sendRedirect("index.jsp");
                       }
                    }
                
                %>
                
                
                
                <%@include file="Templates/footer.jsp" %>
                