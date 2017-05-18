<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="flexjson.JSONSerializer"%>
    <%@page import="java.util.Map"%>
    <%@page import="java.util.HashMap" %>
    <%@page import="java.io.BufferedReader" %>
    <%@page import="java.io.FileReader" %>
    
<%
Map<String, Object> map = new HashMap<String, Object>();

try{

	 double latDouble=0;
	 double langDouble=0;
	
	BufferedReader br = new BufferedReader(new FileReader("D://gps.txt"));
	 String str = "";
	 String lat = null;
	 String lang = null;
	 String slat = null;
	 String slang = null;
    while((str=br.readLine())!=null) {
    	
	      if(str.contains("GPGLL")){
	    	  String data = str;
	    	  System.out.println(str);
	    	  	slat = data.substring(7, 9);
	    	  	slang = data.substring(20, 22);
	    	  	
        		lat = data.substring(9, 16);
        		lang = data.substring(22, 29);
        		System.out.println(lat);
        		System.out.println(lang);
        		int sslat = Integer.parseInt(slat);
        		int sslang= Integer.parseInt(slang);
        		latDouble = (Double.parseDouble(lat))/60+sslat;
        		langDouble = (Double.parseDouble(lang))/60+sslang;
        		System.out.println(latDouble);
        		System.out.println(langDouble);

	    	  
	    	  break;
	    	 
	      }
	    }
    br.close();
	map.put("lat", latDouble);
	map.put("lag", langDouble);
	response.setCharacterEncoding("UTF-8");
	
	response.setContentType("application/json");
	JSONSerializer jss = new JSONSerializer();
	String jsondata = jss.serialize(map);
	System.out.println(jsondata);
	out.println(jsondata);
	
}
catch(Exception e){
	System.out.println(e);
}

%>