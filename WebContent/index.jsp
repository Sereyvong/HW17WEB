<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Student Management</title>
		
		<link href="css/bootstrap.css" rel="stylesheet"/>
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
									<button type="button" class="close">
										<span onclick="close_success()">&times;</span>
									</button>
									<strong>Well done!</strong> You successfully read this important alert message.
								</div>
								<div class="alert alert-danger alert-dismissible" role="alert" id="msg_error">
									<button type="button" class="close"><span onclick="close_error()">&times;</span></button>
									<strong>Oh snap!</strong> Change a few things up and try submitting again.
								</div>
						  		<form method="post" class="form-horizontal" id="frm_add">
								  	<div id="contfrm">								  									  
								  	<div class="form-group" id="fname">
								   		<label for="name" class="col-sm-2 control-label">*Name:</label>
									    <div class="col-sm-10">
									      	<input type="text" class="form-control" name="name" id="name" placeholder="Enter Name...">
									    </div>
								  	</div>
								  	<div class="form-group" id="fgender">
								   		<label for="" class="col-sm-2 control-label">*Gender:</label>
									    <div class="col-sm-10">
									      	<select id="gender" name="gender" class="form-control">																					
												<option value="1">Male</option>
												<option value="0">Female</option>																					
											</select>
									    </div>
								  	</div>
								  	<div class="form-group" id="funiversity">
								    	<label for="university" class="col-sm-2 control-label">*University:</label>
							    		<div class="col-sm-10">
								      		<select id="university" name="university" class="form-control">
												<option value="">-- Select a University --</option>																							
												<option value="Norton">Norton</option>
												<option value="PPIU">PPIU</option>
												<option value="RUPP">RUPP</option>
												<option value="SETEC">SETEC</option>																																				
												<option value="Techno">Techno</option>
												<option value="UP">UP</option>												
											</select>
								    	</div>
								  	</div>
								  	<div class="form-group" id="fclasses">
								    	<label for="classes" class="col-sm-2 control-label">*Class:</label>
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
								  	<div class="form-group" id="fstatus">
								    	<label for="status" class="col-sm-2 control-label">*Status:</label>
							    		<div class="col-sm-10">
								      		<select id="status" name="status" class="form-control">
												<option value="">-- Select a Status --</option>											
												<option value="1">Active</option>											
												<option value="0">Deactivate </option>											
											</select>
								    	</div>
								  	</div>
								  	</div>						 	 	
								  	<div class="form-group">
								    	<div class="col-sm-offset-2 col-sm-10">								    		
								      		<button type="button" id="btnAdd" act="add" class="btn btn-primary">Add</button>
								      		<button type="button" id="btnReset" class="btn btn-danger">Reset</button>
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
											<option value="">All Class</option>											
											<option value="BTB">BTB</option>																			
											<option value="KPS">KPS</option>
											<option value="SR">SR</option>		
											<option value="PP">PP</option>											
										</select>
										<select id="statusSearch" name="status" class="form-control" style="width:150px;">
											<option value="">All Status</option>											
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
													<th class="center-align">Action</th>
												</tr>
											</thead>
											<tbody id="con_body">
												<tr>
													<td>131N10</td>
													<td>Neng Channa</td>
													<td>Male</td>
													<td>SETEC</td>
													<td>BTB</td>
													<td class="center-align">
														<button type="button" id="1" status="1" onclick="action(1)" data="131N10" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>			
													</td>
													<td class="center-align">
														<button type="button" id="1" status="1" onclick="action(1)" data="131N10" class="btn btn-info"><span class="glyphicon glyphicon-eye-open"></span></button>
														<button type="button" id="1" status="1" onclick="action(1)" data="131N10" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span></button>
														<button type="button" id="1" status="1" onclick="action(1)" data="131N10" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></button>			
													</td>
												</tr>
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
        </div>
        <div id="myModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
			    	<!-- dialog body -->
			   		<div class="modal-body">
			     		<button type="button" class="close" data-dismiss="modal">&times;</button>
			    	 	Are you sure? You want to delete.
			   		</div>
			   		<!-- dialog buttons -->
			    	<div class="modal-footer">
			    		<button type="button" id="delete" class="btn btn-primary">Delete</button>
			    		<button data-dismiss="modal" data-bb-handler="cancel" type="button" class="btn btn-default">Cancel</button>
			    	</div>
		  		</div>
			</div>
		</div>
		<div style="height:50px;"></div>
		<script>
			var code = "";
			function close_success(){
				$("#msg_sucess").hide();
				$("#msg_error").hide();
			}
			function close_error(){
				$("#msg_sucess").hide();
				$("#msg_error").hide();
			}
			function agree(){
			    $("#myModal").on("show", function() {    // wire up the OK button to dismiss the modal when shown
			        $("#myModal a.btn").on("click", function(e) {
			            console.log("button pressed");   // just as an example...
			            $("#myModal").modal('hide');     // dismiss the dialog
			        });
			    });
		
			    $("#myModal").on("hide", function() {    // remove the event listeners when the dialog is dismissed
			        $("#myModal a.btn").off("click");
			    });
			    
			    $("#myModal").on("hidden", function() {  // remove the actual elements from the DOM when fully hidden
			        $("#myModal").remove();
			    });
			    
			    $("#myModal").modal({                    // wire up the actual modal functionality and show the dialog
			      "backdrop"  : "static",
			      "keyboard"  : true,
			      "show"      : true                     // ensure the modal is shown immediately
			    });
			}
			
			function gender(g){
				if(g==1)
					return "Male";
				return "Female";
			}
			function status(s,i,id){
				if(s==0)
					return "<button type='button' id='"+i+"' status='0' onclick='act_satus("+i+")' data='"+id+"' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>";
				else
					return "<button type='button' id='"+i+"' status='1' onclick='act_satus("+i+")' data='"+id+"' class='btn btn-success'><span class='glyphicon glyphicon-ok'></span></button>";
			}
			function listDetailStudent(data){
				var str = "";
				for(var i=0; i<data.length; i++){
					str += "<tr>"+
								"<td>"+ data[i].id +"</td>"+
								"<td>"+ data[i].name +"</td>"+
								"<td>"+ gender(data[i].gender) +"</td>"+
								"<td>"+ data[i].university +"</td>"+
								"<td>"+ data[i].classroom +"</td>"+
								"<td class='center-align'>"+ status(data[i].status,i,data[i].id) +"</td>"+
								"<td class='center-align'>"+									
							    "<button type='button' id='"+i+"'  onclick='editStudent("+i+")' data='"+data[i].id+"' class='btn btn-primary'><span class='glyphicon glyphicon-pencil'></span></button>"+
							    "&nbsp;&nbsp;<button type='button' id='"+i+"'  onclick='deleteStudent("+i+")' data='"+data[i].id+"' class='btn btn-danger'><span class='glyphicon glyphicon-remove'></span></button>"+
								"</td>"+
							"</tr>";
				}
				if(data.length==0){
					str +="<tr><td colspan='7'>No record...</td>></tr>"
				}
				$("#con_body").empty();
				$("#con_body").append(str);
			}
			function list(){
				var status = $("#statusSearch").val();
				if(status=="")
					status = 3;
				
				$.ajax({
					url: "slectStudent.act",
					method: "POST",
					data: {
						search : $("#search").val().trim()+"",
						classes : $("#class").val()+"",
						status : status
					},success: function(data){
						if(data=="success"){
							listDetailStudent(data);							
						}else{
							listDetailStudent(data);
						}
					}
				});
				
			}
			function clearFrm(){
				 $('#frm_add').bootstrapValidator('resetForm', true);
				 $("#gender").val("1");
			}
			function deleteStudent(id){
				agree();
				$("#delete").click(function(){
					$("#myModal").modal('hide'); 
					$.ajax({
						url: "deletestudent.act",
						method: "POST",
						data: {
							code : $("#"+id).attr("data")
						},success: function(data){
							if(data=="success"){							
								$("#"+id).parent().parent().remove();
							}
						}
					}); 
				});
				
			}
			function editStudent(id){
				clearFrm();
				var td = $("#"+id).parent().parent().children("td");				
				$("#name").val(td.eq(1).text());
				$("#university").val(td.eq(3).text());
				$("#classes").val(td.eq(4).text());
				$("#status").val(td.eq(5).find("button").attr("status"));
				
				if(td.eq(2).text()=="Male"){
					$("#gender").val("1");
				}else{
					$("#gender").val("0");
				}
				
				$("#btnAdd").text("Edit");
				$("#btnAdd").attr("act","edit");
				
				 code = $("#"+id).attr("data");
			}
			function act_satus(id){
				var status = $("#"+id).attr("status");
				$.ajax({
					url: "statusstudent.act",
					method: "POST",
					data: {
						code : $("#"+id).attr("data"),
						status : status
					},success: function(data){
						if(data=="success"){														
							if(status==1){
								if(($("#statusSearch").val() == "1") || ($("#statusSearch").val()=="0")){ // check search all not 							
									$("#"+id).parent().parent().remove();// remove record									
								}else{
									$("#"+id).attr("status",'0'); // get status
									$("#"+id).removeClass("btn btn-success").addClass("btn btn-danger");// change btn status to disactive
									$("#"+id).find("span").removeClass("glyphicon glyphicon-ok").addClass("glyphicon glyphicon-remove");// change btn icon to disactive
								}
							}else{
								if(($("#statusSearch").val() == "1") || ($("#statusSearch").val()=="0")){ // check search all not 
									$("#"+id).parent().parent().remove();// remove record
								}else{
									$("#"+id).attr("status",'1');// get status
									$("#"+id).removeClass("btn btn-danger").addClass("btn btn-success"); // change btn status to active
									$("#"+id).find("span").removeClass("glyphicon glyphicon-remove").addClass("glyphicon glyphicon-ok");// change btn icon to active
								}
							}
						}else{
							
						}
					}
				});
			}
			$(function(){	
					
				$("#msg_sucess").hide();
				$("#msg_error").hide();
				
				list();
				$("#btnReset").click(function(){
					clearFrm();
				});
				$("#btnAdd").click(function(){
					$("#frm_add").submit();	
				});
				
				$("#search").keyup(function(){
					list();					
				});
				$("#class").change(function(){
					list();	
				});
				$("#statusSearch").change(function(){
					list();	
				});
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
			            },
			            status: {
			                message: 'The username is not valid',
			                validators: {
			                    notEmpty: {
			                        message: 'The status is required and cannot be empty'
			                    }
			                }
			            }
			        }
                }).on('success.form.bv', function(e) { 
                    if($("#btnAdd").attr("act")=="add"){
                		$.ajax({
							url: "addstudent.act",
							method: "POST",
							data: {
								name : $("#name").val(),
								gender : $("#gender").val(),
								university : $("#university").val(),
								classes : $("#classes").val(),
								status : $("#status").val()
							},success: function(data){
								if(data=="success"){							
									clearFrm();
									$("#msg_sucess").show();
									list();
								}else{
									$("#msg_error").show();
								}
							}
						});
					}else{
						$.ajax({
							url: "updatestudent.act",
							method: "POST",
							data: {
								code : code,
								name : $("#name").val(),
								gender : $("#gender").val(),
								university : $("#university").val(),
								classes : $("#classes").val(),
								status : $("#status").val()
							},success: function(data){
								if(data=="success"){							
									clearFrm();
									$("#msg_sucess").show();
									list();
								}else{
									$("#msg_error").show();
								}
							}
						});
					}
                });
			});
		</script>
	</body>
</html>