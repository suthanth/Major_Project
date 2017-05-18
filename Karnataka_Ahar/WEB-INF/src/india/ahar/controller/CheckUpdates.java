package india.ahar.controller;

import india.ahar.model.DataProcess;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class CheckUpdates extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	
	public String execute(){
		new DataProcess().checkUpdates();
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

}
