package india.ahar.controller;

import india.ahar.model.DataProcess;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;


public class ProductInwardDetails extends ActionSupport implements ServletRequestAware{
	


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	private String warehouse;
	private String vehicleNumber;
	private String loadingPoint;
	private String rfid;
	private String material;
	private String quantity;
	private String quality;
	private String amount;
	

	public String getWarehouse() {
		return warehouse;
	}


	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}


	public String getVehicleNumber() {
		return vehicleNumber;
	}


	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}


	public String getLoadingPoint() {
		return loadingPoint;
	}


	public void setLoadingPoint(String loadingPoint) {
		this.loadingPoint = loadingPoint;
	}


	public String getRfid() {
		return rfid;
	}


	public void setRfid(String rfid) {
		this.rfid = rfid;
	}


	public String getMaterial() {
		return material;
	}


	public void setMaterial(String material) {
		this.material = material;
	}


	public String getQuantity() {
		return quantity;
	}


	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}


	public String getQuality() {
		return quality;
	}


	public void setQuality(String quality) {
		this.quality = quality;
	}


	public String getAmount() {
		return amount;
	}


	public void setAmount(String amount) {
		this.amount = amount;
	}


	public String execute(){
		int x = new DataProcess().bookProduct5(this);
		if(x == 1)
			return "success";
		else
			return "error";
			
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		
		this.request = request;
	}

}
