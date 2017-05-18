<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html moznomarginboxes mozdisallowselectionprint>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<s:set name="bookingInfos" value="#session.bookingInfos"></s:set>
	<input type="hidden" id="bookingId" value="${bookingInfos.bookingId }"/>
	<div class="bs-example">
		<form>
			<h3 class="page-header" style="margin: 0;">Check Out</h3>
			<div class="table-responsive">
				<div class="row">
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Entry Time</span>
							<div class="divCheckOut">${bookingInfos.bookingDate }</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Check Out Time</span>
							<div id="datetimepicker" class='input-group date divCheckOut' style="padding: 0px; border: none;">
						      <input id="checkOutDateTime" type="text" class="form-control date" readonly="readonly"
						       value="<fmt:formatDate pattern='dd/MM/yyyy HH:MM' value='<%=new java.util.Date()%>' />"></input>
						      <span class="add-on input-group-addon">
						        <i class="icon icon-calendar" data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
						      </span>
						    </div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Name</span>
							<div class="divCheckOut">${bookingInfos.name }</div>
						</div>
					</div>
				</div>
				<div class="row">
					<%-- <div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Address</span>
							<div class="divCheckOut">${bookingInfos.address }</div>
						</div>
					</div> --%>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Phone Number</span>
							<div class="divCheckOut">${bookingInfos.phoneNumber }</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Email ID</span>
							<div class="divCheckOut">${bookingInfos.email }</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">${bookingInfos.idType }</span>
							<div class="divCheckOut">${bookingInfos.idNo }</div>
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
					             </tr>
					           </thead>
					           <tbody>
					           <s:iterator id="bookingRoomInfo" value="#session.bookingInfos.bookingRoomInfoDtos" status="i">	
					  			<tr>
					             	<td align="center">
					             		<div class="row">
					             			<div class="col-xs-12">${i.index + 1}</div>
					             		</div>
					             	</td>
					             	<td>
					             		<div class="row">
										  	<div class="col-xs-12">${bookingRoomInfo.roomType }</div>
										</div>
									</td>
									<td>
					             		<div class="row">
						             		<div class="col-xs-12">
										  		${bookingRoomInfo.noOfDays }
										  	</div>
										</div>
									</td>
									<td>
					             		<div class="row">
										  	<div class="col-xs-12">
										  		${bookingRoomInfo.noOfRooms }
										  	</div>
										</div>
									</td>
									<td>
					             		<div class="row">
						             		<div class="col-xs-12">
										  		${bookingRoomInfo.amount }
										  	</div>
										</div>
									</td>
								</tr>
								</s:iterator>
					           </tbody>
					         </table>
					        </div>
						</fieldset> 
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">No. Of Persons</span>
							<div class="divCheckOut">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.noOfPersons }" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Extra Persons</span>
							<div class="divCheckOut">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.exraPersons }" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Extra Bed</span>
							<div class="divCheckOut">${bookingInfos.extraBed }</div>
						</div>
					</div>
					<%-- <div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Adults</span>
							<div class="divCheckOut">${bookingInfos.adults }</div>
						</div>
					</div> --%>
				</div>
				<div class="row">
					<%-- <div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Childrens</span>
							<div class="divCheckOut">${bookingInfos.children }</div>
						</div>
					</div> --%>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Room Amount</span>
							<div class="divCheckOut">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.roomAmount }" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Other Charges</span>
							<div class="divCheckOut">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.extraAmount }" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Tax %</span>
							<div class="divCheckOut">${bookingInfos.tax }</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Total Amount</span>
							<div class="divCheckOut">
								<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.totalAmount }" />
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Advance</span>
							<div class="divCheckOut"><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.advance }" /></div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Balance Amt</span>
							<div class="divCheckOut"><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.balanceAmount }" /></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="input-group placeholder">
							<span class="input-group-addon span-width175">Paying Amt</span>
							<input type="text" id="paingAmount" value="<fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.balanceAmount }" />" class="form-control onlyNumbers divCheckOut" />
						</div>
					</div>
				</div>
			</div>
			
			<div class="row next-mater-wrap">
				<div class="col-xs-6">
					<button id="checkOut" type="button" class="btn btn-success" style="float:right;">Check Out</button>
				</div>
				<div class="col-xs-6">
					<button class="btn btn-danger">Cancel</button>
				</div>
			</div>
		</form>
	</div>
	<c:remove var="bookingInfos" scope="session" />
</body>
</html>