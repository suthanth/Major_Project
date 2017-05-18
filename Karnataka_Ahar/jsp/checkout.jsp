<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<body>
		<%@include file="header.jsp" %>
		<div id="workarea"  class="col-sm-offset-1 col-sm-10">
			
		</div>
		<div class="modal fade" id="checkOutModal" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
			  		<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Check Out</h4>
			  		</div>
			  		<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<span>Invoice Number<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="invoiceNumber" class="form-control" />
								</div>
							</div>
						</div>
			  		</div>
			  		<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" data-from="new" class="btn btn-primary"  id="SearchCheckOut">Search</button>
			  		</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</body>
	<script type="text/javascript"  src="<%=request.getContextPath() %>/javascript/checkout.js"></script>
</html>