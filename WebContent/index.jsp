<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		<link href="css/bootstrap.css" rel="stylesheet"/>
		<link href="css/style.css" rel="stylesheet"/>
		
		<!-- import js -->
		<script src="js/jquery.js"></script>
	</head>
	<body>
		<div id="test"></div>
		<div class="container">
			<div class="page-header none-border">
				<h1 class="upercase center-align">Staff and Student Management</h1>				
			</div> 
			<div class="row">
				<div class="col-xs-12 col-md-12 col-sm-12">						
					<div class="panel panel-default">
					  	<div class="panel-heading">Insert New Student</div>
					  	<div class="panel-body">
					  		<div class="col-xs-12 col-md-6 col-sm-6">	
						  		<form class="form-horizontal">
								  	<div class="form-group">
								   		<label for="name" class="col-sm-2 control-label">Name:</label>
									    <div class="col-sm-10">
									      	<input type="text" class="form-control" id="name" placeholder="Enter Name...">
									    </div>
								  	</div>
								  	<div class="form-group">
								    	<label for="inputPassword3" class="col-sm-2 control-label">Gender:</label>
							    		<div class="col-sm-10">
								      		
								    	</div>
								  	</div>						 	 	
								  	<div class="form-group">
								    	<div class="col-sm-offset-2 col-sm-10">
								      		<button type="submit" class="btn btn-primary">Add</button>
								      		<button type="reset" class="btn btn-danger">Reset</button>
								    	</div>
								  	</div>
								</form>
					  		</div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-md-12 col-sm-12">					
					<div class="panel panel-default">
						<nav class="navbar navbar-default">
							<div class="container-fluid">								
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a class="navbar-brand active" href="#">List</a>
								</div>						
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">								 									
									<form class="navbar-form navbar-left" role="search">
										<div class="form-group">
											 <label for="search">Search By Name:</label>
											<input type="text" id="search" class="form-control" placeholder="Search">
										</div>
										<select id="class" class="form-control" style="width:150px;">
											<option value="all">All Class</option>											
											<option value="BTB">BTB</option>																			
											<option value="KPS">KPS</option>
											<option value="SR">SR</option>		
											<option value="PP">PP</option>											
										</select>
										<select id="status" class="form-control" style="width:150px;">
											<option value="all">All Status</option>											
											<option value="1">Active</option>											
											<option value="0">Disactive</option>											
										</select>
									</form>
								</div>								
							</div>
						</nav>										
						<div class="panel-body">							
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12 div-padding-bottom">
									<div class="container-fluid">	
									<div class="table-responsive">
										<table class="table table-bordered table-hover">												
											<thead>
												<tr>													
													<th class="center-align">ID</th>
													<th class="center-align">Name</th>
													<th class="center-align">Gender</th>
													<th class="center-align">University</th>
													<th class="center-align">Class</th>
													<th class="center-align">Status</th>
												</tr>
											</thead>
											<tbody id="con_body">
												
											</tbody>
										</table>
									</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
        </div>
		<div style="height:50px;"></div>
	</body>
</html>