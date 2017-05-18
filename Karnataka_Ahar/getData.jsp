<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%
	String data = "";
	try{
	String id = request.getParameter("rfid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ahar","root","root");
	Statement st = con.createStatement();
	ResultSet res = st.executeQuery("select * from productdetails where id='"+id+"'");
	if(res.next()){
		String whereHouse = res.getString(2);
		String vehicle	= res.getString(3);
		String material = res.getString(5);
		String quantity = res.getString(6);
		String quality = res.getString(7);
		String amount = res.getString(8);
		data = whereHouse+","+vehicle+","+material+","+quantity+","+quality+","+amount;
		
	}
	else{
		data = "error";
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	out.print(data);			
%>