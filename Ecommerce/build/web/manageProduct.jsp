<%@include file="Templates/header.jsp" %>	
        <!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Manage Product</span></h3>
			</div>
		</div>
	<!--banner-->
        <!--content-->
	<div class="content">
            <div class="container">
                <h2 class="tittle">Manage Products</h2>
                <!--Category-->
                <div class="well">
                    <h2 class="title">Add Category</h2>
                    <hr>
                    <form>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Name</span>
                            <input type="text" class="form-control" placeholder="Name" aria-describedby="sizing-addon1">
			</div>
                         <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Description</span>
                            <input type="text" class="form-control" placeholder="Description" aria-describedby="sizing-addon1">
			</div>
                        <input type="submit" name="btn" class="btn btn-success btn-lg" value="Add"/>
                        <a class="btn btn-primary btn-lg" href="#">View All</a>
                    </form>
                    
                    
                </div>
                <!--Category-->
                <hr>
                <!--Product-->
                <div class="well">
                    <h2 class="title">Add Product</h2>
                    <hr>
                    <form>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Name</span>
                            <input type="text" class="form-control" placeholder="Name" aria-describedby="sizing-addon1">
			</div>
                         <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Description</span>
                            <input type="text" class="form-control" placeholder="Description" aria-describedby="sizing-addon1">
			</div>
                        <div class="input-group input-group-lg">
				<span class="input-group-addon">Price &#8377;</span>
				<input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
				<span class="input-group-addon">.00</span>
			</div>
                         <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Quantity</span>
                            <input type="text" class="form-control" placeholder="Quantity" aria-describedby="sizing-addon1">
			</div>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1">Image</span>
                            <input type="file" class="form-control"  aria-describedby="sizing-addon1">
			</div>
                        <input type="hidden" name="status" value="true"/>
                        <input type="submit" name="btn" class="btn btn-success btn-lg" value="Add"/>
                    </form>
                </div>
                <!--Product-->
            </div>
        </div>
	<!--content-->
<%@include file="Templates/footer.jsp" %>