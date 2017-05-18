


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
				
			
					<s:if test="hasActionMessages()">
					      <div class="alert alert-success"> <s:actionmessage/> </div>
					</s:if>
					<div class="table-responsive">
						
						<div class="row">
							<div class="col-md-12">
								<fieldset>
								<legend>Booking Info.&nbsp;</legend>
									<div class="table-responsive">
							         <table id="allocatedReport" class="table table-striped table-bordered table-hover">
							           <thead>
							             <tr>
							               <th>Id</th>
											<th>RFID</th>
							               <th>Ware House</th>
							               <th>Vehicle Number</th>
							               <th>Loading Point</th>
							               <th>Materials</th>
							               <th>Qualit</th>
							               <th>Quantity</th>
							               <th>Amount</th>
							                 <th>Booking_Date</th>
							                  <th>Staus</th>
							             
							             </tr>
							           </thead>
							           <tbody>
							            <s:iterator value="list">
							          	<tr>
							             	
							             	<td>
							             		<s:property value="id"/>
											</td>
											<td>
												<s:property value="rfid"/>
											</td>
											
											<td>
							             			<s:property value="wareHouseName"/>
											</td>
											<td>
							             			<s:property value="vehicleNumber"/>
											</td>
											<td>
							             			<s:property value="loadingPoint"/>
											</td>
											<td>
							             			<s:property value="material"/>
											</td>
											<td>
							             			<s:property value="quantity"/>
											</td>
											<td>
							             			<s:property value="quality"/>
											</td>
											<td>
							             			<s:property value="amount"/>
											</td>
											<td>
							             			<s:property value="bookingDate"/>
											</td>
											<td style="color:green">
							             			<s:property value="status"/>
											</td>
										</tr>
										</s:iterator>
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