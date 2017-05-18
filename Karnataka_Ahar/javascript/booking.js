/**
 * 
 */
$(document).ready(function(){
	

	$.ajax({url:"RFIDRead1.jsp",success:function(data,responseText){
		var myRfid = (data).trim();
		
		if(myRfid.length == 699){
			alert("Invalid RFID !!!");
		}
		else{
			var mydata = data.split(",");
			$("#rfid").val(mydata[0]);
			$("#warehouse").val(mydata[1]);
			$("#vehicle").val(mydata[2]);
			$("#material").val(mydata[3]);
			$("#quantity").val(mydata[4]);
			$("#quality").val(mydata[5]);
			$("#amount").val(mydata[6]);
		}
	}});
	

	$("tr").find("td").find("input.rfid").bind("dblclick",function(){
		var rfid = $(this).val();
		
		$.ajax({url:"getData.jsp?rfid="+rfid,success:function(data,responseText){
				
				if(data !="error"){
					var mydata = data.split(",");
					$("#warehouse").val(mydata[0]);
					$("#vehicle").val(mydata[1]);
					$("#material").val(mydata[2]);
					$("#quantity").val(mydata[3]);
					$("#quality").val(mydata[4]);
					$("#amount").val(mydata[5]);
				}
				else{
					alert(data);
				}
			
		}});

	});
	
	
	
	$('#datetimepicker').datetimepicker({
        format: 'dd/MM/yyyy hh:mm'
    });
	$(".accordion-toggle").click(function(){
		if($(this).find("i").hasClass('icon-calendar')) {
			$(this).next('li').css('height', '0').hide();
			$(this).prev('li').css('height', 'auto').show();
			$(this).find("i").removeClass('icon-calendar').addClass('icon-time');
		} else {
			$(this).prev('li').css('height','0').hide();
			$(this).next('li').css('height', 'auto').show();
			$(this).find("i").removeClass('icon-time').addClass('icon-calendar');
		}
	});
	$("li.active").removeClass('active');
	$("li.booking").addClass('active');
	var idType = $("#idType").attr('data-idType');
	if(idType != null) {
		$("#idType").val(idType);
		
		if(jQuery('#roomType').find(".removeRoom").length > 1) {
			//jQuery('#roomType').find(".removeRoom").show();
		}
	}
	if($("#print").length > 0) {
		printPopUp("printReceipt");
	}
	jQuery('#roomType').on("click", ".removeRoom", function(){
		 $(this).closest('tr').remove();
		 if($("#roomType tbody tr").length == 1) {
			 $("#roomType tbody tr:first .removeRoom").addClass('displayNone');
		 }
		 $("#roomType tbody tr").each(function(i, e){
			// $(this).children('td:first').text(i+1);
		 });
	 }).on("change", ".roomType", function(){
		 var amount = parseInt($(this).find('option:selected').attr("data-amount"));
		 var noOfRooms = $(this).closest('tr').find('.noOfRooms').val();
		 noOfRooms = $.trim(noOfRooms).length == 0? 0 : parseInt(noOfRooms);
		 var noOfDays = $(this).closest('tr').find('.noOfDays').val();
		 noOfDays = $.trim(noOfDays).length == 0? 0 : parseInt(noOfDays);
		 amount = amount * noOfRooms * noOfDays;
		 $(this).closest('tr').find('.amount').val(amount);
		 calculateTotalAmount();
	 }).on("keyup", ".noOfRooms, .noOfDays", function(){
		 $(this).closest('tr').find(".roomType").trigger('change');
	 });
	 $("#extraAmount, #discount, #tax").keyup(function(){
		 calculateTotalAmount();
	 });
	 
	 $("#advance").keyup(function(){
		 var advance = $("#advance").val();
		 advance = $.trim(advance).length == 0? 0 : parseFloat(advance);
		 var totalAmount = $("#totalAmount").val();
		 totalAmount = $.trim(totalAmount).length == 0? 0 : parseFloat(totalAmount);
		 $("#balanceAmount").val(totalAmount - advance);
	 });
	
	 	
	 $("#addRoomType").click(function(){
		 $("#roomType tbody tr:first .removeRoom").removeClass('displayNone');
		 var tr = $("#roomType tbody tr:last").attr("id","abc").clone();
		 tr.find('.removeRoom').removeClass('displayNone');
		 tr.find('select, input').val('');
		 //tr.children('td:first').text($("#roomType tbody tr").length+1);
		 $("#roomType tbody").append(tr);
	 });
	 
	 $("#bookMyRoom").click(function(){
		if(validateFields("#booking-div", 'top', -1)) {
			
			$("#fileUpload").submit();
		} 
	 });
});

calculateTotalAmount = function() {
	var totalAmount = 0;
	jQuery('#roomType').find(".amount").each(function(){
		var amount = $(this).val();
		amount = $.trim(amount).length == 0? 0 : parseFloat(amount);
		totalAmount += amount; 
	});
	$("#roomAmount").val(totalAmount);
	var extraAmount = $("#extraAmount").val();
	extraAmount = $.trim(extraAmount).length == 0? 0 : parseFloat(extraAmount);
	
	var discount = $("#discount").val();
	discount = $.trim(discount).length == 0? 0 : parseFloat(discount);
	
	totalAmount = totalAmount + extraAmount - discount;
	
	var tax = $("#tax").val();
	tax = $.trim(tax).length == 0? 0 : parseFloat(tax);	
	
	totalAmount = ((totalAmount * tax)/100) + totalAmount; 
	totalAmount = Math.round(totalAmount);
	$("#totalAmount").val(totalAmount);
	$("#advance").trigger('keyup');
}