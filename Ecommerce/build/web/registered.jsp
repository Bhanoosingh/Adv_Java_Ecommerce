<%@page import="com.ecommerce.config.DBConfig"%>
<%@include file="Templates/header.jsp" %>
<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.jsp">Home</a> / <span>Registered</span></h3>
			</div>
		</div>
	<!--banner-->

	<!--content-->
		<div class="content">
				<!--login-->
			<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
					<form action="#" method="post">
						<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Firstname" name="fname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Firstname';}" required="">
							<div class="clearfix"></div>
						</div>
                                            <div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Lastname" name="lname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Lastname';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input  type="text" value="Email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						</div>
                                            <div class="key">
							<i class="fa fa-phone" aria-hidden="true"></i>
                                                        <input  type="text" value="Phone Number" name="phone" maxlength="10" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone Number';}" required="">
							<div class="clearfix"></div>
						</div>
                                            <div class="key">
							<i class="fa fa-address-book" aria-hidden="true"></i>
                                                        <input  type="text" value="Address Line 1" name="add1"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address Line 1';}" required="">
							<div class="clearfix"></div>
						</div>
                                                <div class="key">
							<i class="fa fa-address-book" aria-hidden="true"></i>
                                                        <input  type="text" value="Address Line 2" name="add2"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address Line 2';}" required="">
							<div class="clearfix"></div>
						</div>
                                                <div class="key">
							<i class="fa fa-address-book" aria-hidden="true"></i>
                                                        <input  type="text" value="State" name="state"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State';}" required="">
							<div class="clearfix"></div>
						</div>
                                                <div class="key">
							<i class="fa fa-address-book" aria-hidden="true"></i>
                                                        <input  type="text" value="City" name="city"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" required="">
							<div class="clearfix"></div>
						</div>
                                                <div class="key">
							<i class="fa fa-address-book" aria-hidden="true"></i>
                                                        <input  type="text" value="Pin-Code" name="pin"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'pin';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Password" name="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Confirm Password" name="CPassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}" required="">
							<div class="clearfix"></div>
						</div>
						<input type="submit" name="submit" value="Submit">
					</form>
				</div>
				
			</div>
		</div>
				<!--login-->
		</div>
		<!--content-->
                <%
                    String btn=request.getParameter("submit");
                   if(btn !=null){     //error in condition
                        String fname=request.getParameter("fname");
                        String lname=request.getParameter("lname");
                        String email=request.getParameter("Email");
                        String phone=request.getParameter("phone");
                        String billing=request.getParameter("add1")+" "+request.getParameter("add2")+" "+request.getParameter("state")+" "+request.getParameter("city")+" "+request.getParameter("pin");
                        String password=request.getParameter("Password");
                        String cpassword=request.getParameter("CPassword");
                        String role="USER";
                        String shipping="";
                        boolean status=true;
                        
                        
                        int x=DBConfig.executeUpdate("insert into userdetails(fname,lname,email,phone,billing,password,role,shipping,status) values('"
                                +fname+"','"
                                +lname+"','"
                                +email+"','"
                                +phone+"','"
                                +billing+"','"
                                +password+"','"
                                +role+"','"
                                +shipping+"',"
                                +status+")");
                    }
                %>
                <%@include file="Templates/footer.jsp" %>