package india.ahar.controller;

import india.ahar.model.DataProcess;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class ProductBooking extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	
	private String bookingDate;
	private String wareHouseName;
	private String vehicleNumber;
	private String loadingPoint;
	private List<String> material = new ArrayList<String>();
	private List<String> quantity = new ArrayList<String>();
	private List<String> quality = new ArrayList<String>();
	private List<String> amount = new ArrayList<String>();



	public List<String> getAmount() {
		return amount;
	}

	public void setAmount(List<String> amount) {
		this.amount = amount;
	}

	public List<String> getQuality() {
		return quality;
	}

	public void setQuality(List<String> quality) {
		this.quality = quality;
	}

	public List<String> getMaterial() {
		return material;
	}

	public List<String> getQuantity() {
		return quantity;
	}

	public void setQuantity(List<String> quantity) {
		this.quantity = quantity;
	}

	public void setMaterial(List<String> material) {
		this.material = material;
	}

	public String execute(){
		new DataProcess().bookProduct(this);
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

	public String getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getWareHouseName() {
		return wareHouseName;
	}

	public void setWareHouseName(String wareHouseName) {
		this.wareHouseName = wareHouseName;
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

}
