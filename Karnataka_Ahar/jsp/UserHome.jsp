

<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
    	
	</head>
	<body>
		<%@include file="userHead.jsp" %>
		<div id="workarea"  class="col-sm-offset-1 col-sm-10">
			<div class="bs-example" id="booking-div">
				<form action="delivery" method="post">
					<h3 class="page-header" style="margin: 0;">Product Delivery</h3>
					<input type="hidden" value="NEW" name="fromPage" />
					<s:set name="message" value="#session.message"></s:set>
					<s:property value="exception"/>
					<s:property value="exceptionStack"/>
					<s:if test="hasActionErrors()">
					      <div class="alert alert-danger"> <s:actionerror /></div>
					</s:if>
				
					<s:if test="hasActionMessages()">
					      <div class="alert alert-success"> <s:actionmessage/> </div>
					</s:if>
	
			
					<s:token />
			</form>
			</div>
		</div>
	</body>

</html>