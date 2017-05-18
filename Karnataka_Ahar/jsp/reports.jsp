<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
		<style type="text/css">
			table.dataTable tbody th, table.dataTable tbody td {
			    padding: 0 10px;
			}
		</style>
	</head>
	<body>
		<%@include file="header.jsp" %>
		<div id="workarea"  class="col-sm-offset-1 col-sm-10">
			<div class="bs-example">
				<form>
					<h3 class="page-header" style="margin: 0;">Reports</h3>
					<s:set name="message" value="#session.message"></s:set>
					<s:set name="flag" value="#session.flag"></s:set>
					<s:property value="exception"/>
					<s:property value="exceptionStack"/>
					<s:if test="hasActionErrors()">
					      <div class="alert alert-danger"> <s:actionerror /></div>
					</s:if>
					<s:else>
						<c:if test="${message != null}">
							<div class="alert alert-success"> ${message} </div>
							<input type="hidden" value="print" id="print" />
							<c:remove var="message" scope="session" />
						</c:if>
					</s:else>
					<s:if test="hasActionMessages()">
					      <div class="alert alert-success"> <s:actionmessage/> </div>
					</s:if>
					<div class="table-responsive">
						<%-- <div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>From Date<b class="mandatory">&nbsp;*</b></span>
									<div class='input-group date' data-provide="datepicker"
										data-date-autoclose="true" data-date-today-btn="linked"
										data-date-end-date="today" data-date-today-highlight="true"
										data-date-format="dd.mm.yyyy">
										<input type="text" id="transferDate" class="form-control date"
											readonly="readonly"
											value="">
										<span class="input-group-addon"><span
											class="icon icon-calendar"></span> </span>
									</div>
								</div>
							</div>bookingInfos
							<div class="col-md-3">
								<div class="form-group">
									<span>To Date<b class="mandatory">&nbsp;*</b></span>
									<div class='input-group date' data-provide="datepicker"
										data-date-autoclose="true" data-date-today-btn="linked"
										data-date-end-date="today" data-date-today-highlight="true"
										data-date-format="dd.mm.yyyy">
										<input type="text" id="transferDate" class="form-control date"
											readonly="readonly"
											value="">
										<span class="input-group-addon"><span
											class="icon icon-calendar"></span> </span>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Customer Name<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="phoneNumber" class="form-control onlyNumbers" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span><br/></span><!-- <i class="icon icons-search"></i> -->
									<button id="searchReports" class="btn btn-success">Search</button>
								</div>
							</div>
						</div> --%>
						<div class="row">
							<div class="col-md-12">
								<fieldset>
								<legend>Booking Info.&nbsp;</legend>
									<div class="table-responsive">
							         <table id="allocatedReport" class="table table-striped table-bordered table-hover">
							           <thead>
							             <tr>
							               <th>Invoice Number</th>
							               <th>Name</th>
							               <th>Phone Number</th>
							               <th>Entry Time</th>
							               <th>Check Out Time</th>
							               <th>Total Amount</th>
							               <c:if test="${flag == 0}"><th></th></c:if>
							             </tr>
							           </thead>
							           <tbody>
							            <c:forEach var="bookingInfo" items="${bookingInfos}">
							          	<tr data-bookingId='${bookingInfo.bookingId }'>
							             	<td align="center">${bookingInfo.bookingId }</td>
							             	<td>
							             		${bookingInfo.name }
											</td>
											<td>
							             		${bookingInfo.phoneNumber }
											</td>
											<td>
							             		${bookingInfo.bookingDate }
											</td>
											<td>
							             		${bookingInfo.checkout_datetime }
											</td>
											<td>
							             		${bookingInfo.totalAmount }
											</td>
											<c:if test="${flag == 0}">
												<td class="g-remove">
									           		<a href="editBooking.action?invoiceNumber=${bookingInfo.bookingId }"> <img height="20px" data-id="UpdateRoom" alt="" class="edit-details" src="<%=request.getContextPath() %>/images/edit.png" /></a>
									           		<img height="20px" alt="" class="removeRoom" src="<%=request.getContextPath() %>/images/DeleteRed.png" />
									           	</td>
								           	</c:if>
										</tr>
										</c:forEach>
							           </tbody>
							         </table>
							        </div>
								</fieldset> 
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</body>
	<script type="text/javascript"  src="<%=request.getContextPath() %>/javascript/reports.js"></script>
</html>