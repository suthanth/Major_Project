package india.ahar.controller;

import india.ahar.model.DataProcess;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class SellProduct extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	private String rfid;
	private String quantity;
	
	
	public String getRfid() {
		return rfid;
	}


	public void setRfid(String rfid) {
		this.rfid = rfid;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String execute(){
		new DataProcess().sellDat(quantity.toString(),rfid.toString());
		return "success";
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

}
