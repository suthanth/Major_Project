$(document).ready(function(){

	$.ajax({url:"RFIDRead.jsp",success:function(data,responseText){
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
});