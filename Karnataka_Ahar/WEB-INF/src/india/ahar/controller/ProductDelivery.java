package india.ahar.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

@WebServlet("/ProductDelivery")
public class ProductDelivery extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	HttpServletRequest request;
	private String bookingDate;
	private String wareHouseName;
	private String vehicleNumber;
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

	public List<String> getMaterial() {
		return material;
	}

	public void setMaterial(List<String> material) {
		this.material = material;
	}

	public List<Long> getQuantity() {
		return quantity;
	}

	public void setQuantity(List<Long> quantity) {
		this.quantity = quantity;
	}

	public List<Long> getQuality() {
		return quality;
	}

	public void setQuality(List<Long> quality) {
		this.quality = quality;
	}

	public List<Double> getAmount() {
		return amount;
	}

	public void setAmount(List<Double> amount) {
		this.amount = amount;
	}

	private String loadingPoint;
	private List<String> material = new ArrayList<String>();
	private List<Long> quantity = new ArrayList<Long>();
	private List<Long> quality = new ArrayList<Long>();
	private List<Double> amount = new ArrayList<Double>();

	
	public String execute(){
		System.out.println(material);
		System.out.println(quantity);
		return "success";
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
		
	}

}
