<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
		
		<link href="css/bootstrap.css" rel="stylesheet"/>
		<link href="css/bootstrapValidator.css" rel="stylesheet"/>
		<link href="css/style.css" rel="stylesheet"/>
		
		<!-- import js -->
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/bootstrapValidator.js"></script>
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
						  		<div class="alert alert-success alert-dismissible" role="alert" id="msg_sucess">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<strong>Well done!</strong> You successfully read this important alert message.
								</div>
								<div class="alert alert-danger alert-dismissible" role="alert" id="msg_error">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<strong>Oh snap!</strong> Change a few things up and try submitting again.
								</div>
						  		<form method="post" class="form-horizontal" id="frm_add">
								  									  									  
								  	<div class="form-group">
								   		<label for="name" class="col-sm-2 control-label">Name:</label>
									    <div class="col-sm-10">
									      	<input type="text" class="form-control" name="name" id="name" placeholder="Enter Name...">
									    </div>
								  	</div>
								  	<div class="form-group">
								   		<label for="" class="col-sm-2 control-label">Gender:</label>
									    <div class="col-sm-10">
									      	<div class="radio">
											  	<label  class="radio-inline">
											    	<input type="radio" name="gender" id="male" value="1" checked />
											   		Male
											  	</label>
											  	<label  class="radio-inline">
											    	<input type="radio" name="gender" id="female" value="0" />
											   		Female
											  	</label>
											</div>
									    </div>
								  	</div>
								  	<div class="form-group">
								    	<label for="university" class="col-sm-2 control-label">University:</label>
							    		<div class="col-sm-10">
								      		<select id="university" name="university" class="form-control">
												<option value="">-- Select a Class --</option>																							
												<option value="Norton">Norton</option>
												<option value="PPIU">PPIU</option>
												<option value="RUPP">RUPP</option>
												<option value="SETEC">SETEC</option>																																				
												<option value="Techno">Techno</option>
												<option value="UP">UP</option>												
											</select>
								    	</div>
								  	</div>
								  	<div class="form-group">
								    	<label for="classes" class="col-sm-2 control-label">Class:</label>
							    		<div class="col-sm-10">
								      		<select id="classes" name="classes" class="form-control">
												<option value="">-- Select a Class --</option>											
												<option value="BTB">BTB</option>																			
												<option value="KPS">KPS</option>
												<option value="SR">SR</option>		
												<option value="PP">PP</option>											
											</select>
								    	</div>
								  	</div>
								  	<div class="form-group">
								    	<label for="status" class="col-sm-2 control-label">Status:</label>
							    		<div class="col-sm-10">
								      		<select id="status" name="status" class="form-control">
												<option value="">-- Select a Status --</option>											
												<option value="1">Active</option>											
												<option value="0">Deactivate </option>											
											</select>
								    	</div>
								  	</div>						 	 	
								  	<div class="form-group">
								    	<div class="col-sm-offset-2 col-sm-10">
								      		<button type="button" class="btn btn-primary">Add</button>
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
										<select id="class" name="class" class="form-control" style="width:150px;">
											<option value="all">All Class</option>											
											<option value="BTB">BTB</option>																			
											<option value="KPS">KPS</option>
											<option value="SR">SR</option>		
											<option value="PP">PP</option>											
										</select>
										<select id="status" name="status" class="form-control" style="width:150px;">
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
		<script>
			$(function(){
				$("#msg_sucess").hide();
				$("#msg_error").hide();
			});
			$(document).ready(function() {
			    $('#frm_add').bootstrapValidator({
			        message: 'This value is not valid',
			        feedbackIcons: {
			            valid: 'glyphicon glyphicon-ok',
			            invalid: 'glyphicon glyphicon-remove',
			            validating: 'glyphicon glyphicon-refresh'
			        },
			        fields: {
			            name: {
			                message: 'The username is not valid',
			                validators: {
			                    notEmpty: {
			                        message: 'The name is required and cannot be empty'
			                    },
			                    stringLength: {
			                        min: 4,
			                        max: 30,
			                        message: 'The name must be more than 4 and less than 30 characters long'
			                    },
			                    regexp: {
			                        regexp: /^[a-zA-Z_\s.]+$/,
			                        message: 'The name can only consist of alphabetical, number, dot and underscore'
			                    }
			                }
			            },
			            university: {
			                message: 'The username is not valid',
			                validators: {
			                    notEmpty: {
			                        message: 'The university is required and cannot be empty'
			                    }
			                }
			            },
			            classes: {
			                message: 'The username is not valid',
			                validators: {
			                    notEmpty: {
			                        message: 'The class is required and cannot be empty'
			                    }
			                }
			            },
			            gender: {
			                message: 'The username is not valid',
			                validators: {
			                    notEmpty: {
			                        message: 'The gender is required and cannot be empty'
			                    }
			                }
			            }
			        }
			    });
			});
		</script>
	</body>
</html>