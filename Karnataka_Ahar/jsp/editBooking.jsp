<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
    	
	</head>
	<body>
		<%@include file="header.jsp" %>
		<div id="workarea"  class="col-sm-offset-1 col-sm-10">
			<div class="bs-example" id="booking-div">
				<form id="fileUpload" action="bookMyRoom.action" method="post" enctype="multipart/form-data">
					<h3 class="page-header" style="margin: 0;">Booking</h3>
					<s:set name="message" value="#session.message"></s:set>
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
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>Date<b class="mandatory">&nbsp;*</b></span>
									<%-- <div class='input-group date' data-provide="datepicker"
										data-date-autoclose="true" data-date-today-btn="linked"
										data-date-end-date="today" data-date-today-highlight="true"
										data-date-format="dd/mm/yyyy hh:mm">
										<input type="text" name="bookingDate" class="form-control date" readonly="readonly" 
											value="<fmt:formatDate pattern='dd/MM/yyyy HH:MM' value='<%=new java.util.Date()%>' />">
										<span class="input-group-addon"><span
											class="icon icon-calendar"></span> </span>
									</div> --%>
									<div id="datetimepicker" class='input-group date'>
								      <input name="bookingDate" type="text" class="form-control date" readonly="readonly"
								       value="${bookingInfo.bookingDate}"></input>
								      <span class="add-on input-group-addon">
								        <i class="icon icon-calendar" data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
								      </span>
								    </div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Name<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="${bookingInfo.name}" name="name" class="form-control" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Phone Number<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="phoneNumber" value="${bookingInfo.phoneNumber}" class="form-control onlyNumbers" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Address<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="address" value="${bookingInfo.address}" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>Email ID<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="email" value="${bookingInfo.email}" class="form-control" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>ID Type<b class="mandatory">&nbsp;*</b></span>
									<select class="form-control" name="idType" id="idType" data-idType="${bookingInfo.idType}">
										<option value="">--- Select ---</option>
										<option value="Election ID">Election ID</option>
										<option value="Passport">Passport</option>
										<option value="Pan Card">Pan Card</option>
										<option value="Adhar">Adhar Card</option>
										<option value="Ration Card">Ration Card</option>
										<option value="Driving Licence">Driving Licence</option>
										<option value="Others">Others</option>
									</select>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>ID No.<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="idNo" class="form-control" value="${bookingInfo.idNo}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>&nbsp;</span>
									<s:file  name="idFile" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<fieldset>
								<legend>Room Booking&nbsp;</legend>
									<div class="table-responsive">
							         <table id="roomType" class="table table-striped table-bordered table-hover">
							           <thead>
							             <tr>
							               <th>Sl No</th>
							               <th>Room Type</th>
							               <th>No. Of Days</th>
							               <th>No. Of Rooms</th>
							               <th>Amount</th>
							               <th>
							               	<img height="30px" id="addRoomType" src="<%=request.getContextPath() %>/images/add.png" />
							               </th>
							             </tr>
							           </thead>
							           <tbody>
							           <c:forEach var="bookingRoomInfo" items="${bookingInfo.bookingRoomInfoDtos}" varStatus="i">
							          	<tr>
							             	<td align="center">${i.index + 1}</td>
							             	<td>
								             	<select class="form-control roomType" name="roomType">
													<option value="" data-amount="0" selected="selected">--- Select ---</option>
													<s:iterator id="roomsBean" value="#session.rooms" status="i">
														<option value="${roomsBean.room_type}"
														<c:if test="${bookingRoomInfo.roomType == roomsBean.room_type}">
															selected = 'selected' 
														</c:if>
														 data-amount="${roomsBean.amount_per_day}">${roomsBean.room_type}</option>
													</s:iterator>
												</select>
											</td>
											<td>
												<input type="text" value="${bookingRoomInfo.noOfDays}" name="noOfDays" class="form-control noOfDays onlyNumbers" />
											</td>
											<td>
												<input type="text" value="${bookingRoomInfo.noOfRooms}" name="noOfRooms" class="form-control noOfRooms onlyNumbers" />
											</td>
											<td>
												<input type="text" value="${bookingRoomInfo.amount}" readonly="readonly" name="amount" class="form-control amount onlyNumbers" />
											</td>
											<td align="center">
												<img height="30px" alt="" class="removeRoom displayNone" src="<%=request.getContextPath() %>/images/DeleteRed.png" />
												<!-- <button type="button" class="btn btn-warning removeRoom displayNone"><i class="icon icons-d"></i></button> -->
											</td>
										</tr>
										</c:forEach>
							           </tbody>
							         </table>
							        </div>
								</fieldset> 
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>No. Of Persons<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="0" name="noOfPersons" class="form-control onlyNumbers" value="${bookingInfo.noOfPersons}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Extra Persons<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="0" name="exraPersons" class="form-control onlyNumbers" value="${bookingInfo.exraPersons}"/>
								</div>
							</div>
							<%-- <div class="col-md-3">
								<div class="form-group">
									<span>No. Of Adults<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="adults" class="form-control onlyNumber onlyNumbers" value="${bookingInfo.adults}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>No. Of Children<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="children" class="form-control onlyNumbers" value="${bookingInfo.children}"/>
								</div>
							</div> --%>
							<div class="col-md-3">
								<div class="form-group">
									<span>Extra Bed<b class="mandatory">&nbsp;*</b></span>
									<input type="text" name="extraBed" class="form-control onlyNumbers" value="${bookingInfo.extraBed}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Room Amount<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="roomAmount" name="roomAmount" class="form-control onlyNumbers" readonly="readonly" value="${bookingInfo.roomAmount}"/>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>Other Charges<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="extraAmount" name="extraAmount" class="form-control onlyNumber onlyNumbers" value="${bookingInfo.extraAmount}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Tax %</span>
									<input type="text" id="tax" name="tax" class="form-control" value="${bookingInfo.tax}"/>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Discount<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="discount" value="${bookingInfo.discount}" name="discount" class="form-control onlyNumbers" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Total Amount<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="${bookingInfo.totalAmount}" id="totalAmount" name="totalAmount" class="form-control onlyNumbers" readonly="readonly" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<span>Advance<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="${bookingInfo.advance}" id="advance" name="advance" class="form-control onlyNumbers" />
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<span>Balance Amount<b class="mandatory">&nbsp;*</b></span>
									<input type="text" value="${bookingInfo.balanceAmount}" id="balanceAmount" name="balanceAmount" class="form-control onlyNumbers" readonly="readonly" />
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" value="UPDATE" name="fromPage" />
					<input type="hidden" value="${bookingInfo.bookingId}" name="bookingId" />
					<div class="row next-mater-wrap">
						<div class="col-xs-6">
							<button data-id="${bookingInfo.bookingId}" id="bookMyRoom" type="button" class="btn btn-success" style="float:right;">Book My Room</button>
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
	<script type="text/javascript"  src="<%=request.getContextPath() %>/javascript/booking.js"></script>
</html>