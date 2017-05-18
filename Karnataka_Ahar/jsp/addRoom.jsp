
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="bs-example">
	<form>
		<h3 class="page-header" style="margin: 0;">Reports</h3>
		<div class="table-responsive">
			<div class="row">
				<div class="col-md-12">
					<fieldset>
					<legend>Booking Info.&nbsp;&nbsp;&nbsp;<img height="30px" id="addRoomType" src="<%=request.getContextPath() %>/images/add.png"  data-toggle="modal" data-target="#addRoom" /></legend>
						<div class="table-responsive">
				         <table id="roomInfoTable" class="table table-striped table-bordered table-hover">
				           <thead>
				             <tr>
				               <th>Sl No</th>
				               <th>Room Type</th>
				               <th>Total Rooms</th>
				               <th>No Of Persons in Room</th>
				               <th>Amount</th>
				               <th></th>
				             </tr>
				           </thead>
				           <tbody>
				          	<s:iterator id="roomsBean" value="#session.rooms" status="i">
					             <tr data-id="${roomsBean.id}">
					             	<td>${i.index+1}</td>
									<td data-value="${roomsBean.room_type}">${roomsBean.room_type}</td>
									<td data-value="${roomsBean.total_rooms}">${roomsBean.total_rooms}</td>
									<td data-value="${roomsBean.no_of_persons}">${roomsBean.no_of_persons}</td>
									<td data-value="${roomsBean.amount_per_day}">${roomsBean.amount_per_day}</td>
						           	<td class="g-remove">
						           		<img height="20px" data-id="UpdateRoom" alt="" class="edit-details" src="<%=request.getContextPath() %>/images/edit.png" />
						           		<img height="20px" alt="" class="removeRoom" src="<%=request.getContextPath() %>/images/DeleteRed.png" />
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
		<div class="modal fade" id="addRoom" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
			  		<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">New Room</h4>
			  		</div>
			  		<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<span>Room Type<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="roomType" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<span>Available Rooms in Comfort<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="totalRooms" class="form-control onlyNumbers" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<span>No Of Persons<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="noOfPersons" class="form-control onlyNumbers" />
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<span>Amount per day<b class="mandatory">&nbsp;*</b></span>
									<input type="text" id="amount" class="form-control onlyNumbers" />
								</div>
							</div>
						</div>
			  		</div>
			  		<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" data-from="new" class="btn btn-primary"  id="SaveRoom">Save changes</button>
			  		</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
	</form>
</div>