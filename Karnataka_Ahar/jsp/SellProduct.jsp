

<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
    	
	</head>
	<body>
		<%@include file="userHead.jsp" %>
		<div id="workarea"  class="col-sm-offset-1 col-sm-10">
			<div class="bs-example" id="booking-div">
				<form action="sell" method="post">
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
					<div class="table-responsive">
						<div class="row">
						
							<div class="col-md-3">
							<div class="form-group">
									<span>WareHouse<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="warehouse" class="form-control" value="" id="warehouse" readonly="readonly"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Vehicle_Number<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="vehicleNumber" id="vehicle" class="form-control onlyNumbers" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Loading_Point<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="loadingPoint" class="form-control" value="Government_WareHouse" placeholder="Government_WareHouse" readonly="readonly"/>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<fieldset>
								<legend>Goods Tracking&nbsp;</legend>
									<div class="table-responsive">
							         <table id="roomType" class="table table-striped table-bordered table-hover">
							           <thead>
							             <tr>
							               <th>RFID</th>
							               <th>Material</th>
							               <th>Quantity</th>
							               <th>Quality</th>
							               <th>Amount</th>
							               <th>
							               	<img height="30px" id="addRoomType" src="<%=request.getContextPath() %>/images/add.png" />
							               </th>
							             </tr>
							           </thead>
							           <tbody>
							          	<tr class="data">
							             	<td align="center"><input type="text" value="0" name="rfid" id="rfid" class="form-control rfid" /></td>
							             	<td>
								             	<input type="text" value="0" name="material" id="material" class="form-control noOfRooms onlyNumbers" />
											</td>
											<td>
												<input type="text" value="0" name="quantity" id="quantity" class="form-control noOfRooms onlyNumbers" />
											</td>
											<td>
												<input type="text" value="0" name="quality" id="quality" class="form-control noOfDays onlyNumbers" />
											</td>
											<td>
												<input type="text" value="0"  name="amount" id="amount" class="form-control amount onlyNumbers" />
											</td>
											<td align="center">
												<img height="30px" alt="" class="removeRoom displayNone" src="<%=request.getContextPath() %>/images/DeleteRed.png" />
												<!-- <button type="button" class="btn btn-warning removeRoom displayNone"><i class="icon icons-d"></i></button> -->
											</td>
										</tr>
										
							           </tbody>
							         </table>
							        </div>
								</fieldset> 
							</div>
						</div>

				
					</div>
					<div class="row next-mater-wrap">
						<div class="col-xs-6">
							<button  type="submit" class="btn btn-success" style="float:right;">Receive_Material</button>
						</div>
						<div class="col-xs-6">
							<button type="clear" class="btn btn-danger">Cancel</button>
						</div>
					</div>
					<s:token />
			</form>
			</div>
		</div>
	</body>
	<script type="text/javascript"  src="<%=request.getContextPath() %>/javascript/sellprod.js"></script>
</html>