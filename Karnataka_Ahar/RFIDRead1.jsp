<%@page import="jssc.SerialPort"%>   
<%@page import="java.sql.*"%>
<%
 try {
	 SerialPort serialPort = new SerialPort("COM8");
	 String data = "";
       serialPort.openPort();//Open serial port
      serialPort.setParams(9600, 8, 1, 0);//Set params.
   	
       byte[] buffer = serialPort.readBytes(12);
       String decoded = new String(buffer, "UTF-8");
       //Read 10 bytes from serial port
       String rfid = new String(buffer);
   		System.out.println(rfid);
       serialPort.closePort();
       
       
       
   	Class.forName("com.mysql.jdbc.Driver");
   	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ahar","root","root");
   	Statement st = con.createStatement();
   	ResultSet res = st.executeQuery("select * from productdetails where id='"+rfid+"'");
   	System.out.println(rfid);
   	if(res.next()){
   		String whereHouse = res.getString(2);
   		String vehicle	= res.getString(3);
   		String material = res.getString(5);
   		String quantity = res.getString(6);
   		String quality = res.getString(7);
   		String amount = res.getString(8);
   		data = rfid+","+whereHouse+","+vehicle+","+material+","+quantity+","+quality+","+amount;
   		
   	}
   	else{
   		data = "error";
   	}
   	System.out.println(data);
       out.print(data.trim());
	 
   }
   catch (Exception ex) {
       System.out.println(ex);
   } 
	
	
%>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 