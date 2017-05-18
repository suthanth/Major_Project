package india.ahar.controller;

import java.util.HashMap;
import java.util.Map;
import flexjson.JSONSerializer;
import india.ahar.model.DataProcess;

import javax.servlet.http.HttpServletRequest;



import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginCheck extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	private String  userID;
	private String password;
	String resultString = "error";
	String resultData = "success";
	Map<String,String> map = new HashMap<String,String>();
	

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute(){
		if(userID.toString().equalsIgnoreCase("admin")&&password.toString().equalsIgnoreCase("admin")){
			String jsondata = "";
			JSONSerializer ser = new JSONSerializer();
			map.put("resultString", "admin");
			jsondata = ser.serialize(map);
			request.setAttribute("jsondata", jsondata);
			return "jsondata";
			
		}
		if(userID.toString().equalsIgnoreCase("user")&&password.toString().equalsIgnoreCase("user")){
			String jsondata = "";
			JSONSerializer ser = new JSONSerializer();
			map.put("resultString", "user");
			jsondata = ser.serialize(map);
			request.setAttribute("jsondata", jsondata);
			return "jsondata";
		}
		else{
			String jsondata = "";
			JSONSerializer ser = new JSONSerializer();
			map.put("resultString", resultString);
			jsondata = ser.serialize(map);
			request.setAttribute("jsondata", jsondata);
			return "jsondata";
		}
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

}
