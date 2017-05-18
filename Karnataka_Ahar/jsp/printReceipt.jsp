<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Receipt</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
</head>
<body>
	<s:set name="bookingInfos" value="#session.bookingInfos"></s:set>
	<input type="hidden" id="bookingId" value="${bookingInfos.bookingId }"/>
	<div id="workarea"  class="col-sm-offset-1 col-sm-10">
		<h3 class="page-header" style="margin: 0;">
			<table class="table">
				<tr>
					<td>
						<b style="color:#111;">Chinthu</b>&nbsp;<b style="color:#ec5d5d;">Comforts</b>&nbsp;&nbsp;&nbsp;
						<br/>
						<h6>B H Road, Kyathsandra, Tumkur 572104<br/><b>Ph. 0816-2280399</b></h6>
					</td>
					<td>
						<h6>
							<b>Invoice : </b>${bookingInfos.bookingId }<br/>
							<p><b>Date : </b><fmt:formatDate pattern='dd/MM/yyyy HH:MM' value='<%=new java.util.Date()%>' /></p>
						</h6>
					</td>
				</tr>
			</table>
		</h3>
		<div class="table-responsive" style="margin-top: 23px;">
			<div class="wraper">
				<table class="table table-bordered">
					<tr>
						<td><b>Name : </b>${bookingInfos.name }</td>
						<td><b>Address : </b>${bookingInfos.address }</td>
					</tr>
					<tr>
						<td>
						<table>
							<tr><td><b>Phone Number : </b>${bookingInfos.phoneNumber }</td></tr>
							<tr><td><b>Email : </b>${bookingInfos.email }</td></tr>
						</table>
						</td>
						<td>
						<table>
							<tr><td><b>Arrival Date/Time : </b>${bookingInfos.bookingDate }</td></tr>
							<tr><td><b>Check Out Date/Time : </b>${bookingInfos.checkout_datetime }</td></tr>
						</table>
						</td>
					</tr>
				<!-- </table>
				<table class="table table-bordered"> -->
					<tr>
						<td><b>Room Amount  </b></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.roomAmount }" /></td>
					</tr>
					<tr>
						<td><b>Other Charges  </b></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.extraAmount }" /></td>
					</tr>
					<tr>
						<td><b>Discount  </b></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.discount }" /></td>
					</tr>
					<c:if test="${bookingInfos.fromPage == 'CHECKOUT'}">
						<tr>
							<td><b>Advance  </b></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.advance }" /></td>
						</tr>
					</c:if>
				<!-- </table>
				<table class="table table-bordered"> -->
					<c:if test="${bookingInfos.fromPage == 'BOOKING'}">
						<tr>
							<td><b>Total Amount </b></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.roomAmount + bookingInfos.extraAmount - bookingInfos.discount }" /></td>
						</tr>
					</c:if>
					<c:if test="${bookingInfos.fromPage == 'CHECKOUT'}">
						<tr>
							<td><b>Total Amount </b></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.roomAmount + bookingInfos.extraAmount - bookingInfos.discount - bookingInfos.advance }" /></td>
						</tr>
					</c:if>
					<tr>
						<td><b>Amount + Tax (${bookingInfos.tax}%)  </b></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.totalAmount }" /></td>
					</tr>
					<c:if test="${bookingInfos.fromPage == 'BOOKING'}">
						<tr>
							<td><b>Advance  </b></td>
							<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.advance }" /></td>
						</tr>
					</c:if>
					<tr>
						<td><b>Balance  </b></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="0" value="${bookingInfos.balanceAmount }" /></td>
					</tr>
				</table>
			</div>
		</div>
		<center><img style="float:right; cursor: pointer;" onclick="window.print()" src="<%=request.getContextPath() %>/images/print_button.png"/></center>
	</div>
	<c:remove var="bookingInfos" scope="session" />
</body>
</html>