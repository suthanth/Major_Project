<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<s:set name="userType" value="#session.usertype"></s:set>
<body>
<h1 class="page-header">User's List</h1>
	<!-- Modal -->
	<div class="modal fade" id="addUser" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h4 class="modal-title">Add User</h4>
	  </div>
	  <div class="modal-body">
	  	<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>User Name</label> 
					<input type="text" id="userName" class="form-control" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>Password</label> 
					<input type="password" id="password" class="form-control" />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<label>User Type</label> 
					<select id="userType" class="form-control">
						<option value="Admin">Admin</option>
						<option value="User">User</option>
					</select>
				</div>
			</div>
		</div>
	  </div>
	  <div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="button" id="addNewUser" data-type='New' class="btn btn-primary">Add User</button>
	  </div>
	</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->

	<fieldset>
		<legend>User Details &nbsp;&nbsp;&nbsp;<button style="background-color: rgb(245, 245, 245);" data-id="addUser" class="btn btn-sm btn-default" data-toggle="modal" data-target="#addUser" >
				<i class="addIcon"></i>
			</button>
		</legend>
		<div class="table-responsive">
		  	<div class="wraper">
				<!-- Begining -->
				<table border="1" cellspacing="0" cellpadding="0" id="userListTable" class="table table-striped table-bordered table-hover">
				  <thead>
						<tr>
						  <th>SL No.</th>
						  <th>User Name</th>
						  <th>User Type</th>
						  <th></th>
						</tr>
					  </thead>
					  <tbody>
					  <%-- <s:iterator id="userBean" value="#session.userList" status="i">
						<tr>
						  <td align="center">${i.index + 1}</td>
						  <td>${userBean.userid}<input type="hidden" value="${userBean.userid}" /></td>
						  <td>${userBean.usertype}<input type="hidden" value="${userBean.usertype}" /></td>
						  <td>${userBean.employeeId}<input type="hidden" value="${userBean.employeeId}" /></td>
						 <td><button data-id="addUser" class="btn btn-default btn-xs edit-details" type="button">
								<span class="icon icons-ed"></span>
								Edit
							</button>
						  </td>
						</tr>
					  </s:iterator> --%>
						
					  </tbody>
				</table>
			</div>
		</div>
	</fieldset>
</body>
</html>