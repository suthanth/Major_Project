package india.ahar.model;

import india.ahar.controller.LoginCheck;
import india.ahar.controller.ProductBook;
import india.ahar.controller.ProductBooking;
import india.ahar.controller.ProductInwardDetails;
import india.ahar.controller.ProductOutsourceDetails;
import india.ahar.controller.getDateDetails;
import india.ahar.controller.getmyData;
import india.ahar.model.other.samp;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
public class DataProcess {
	Connection con = null;
	
	public void bookProduct(ProductBooking book){
		
		try{
			con = new DBCon().getConnection();
			String sql = "insert into productDetails (bookingDate,whareHouse,vehicleNumber,loadingPoint,material,quantity,quality,amount) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pre = con.prepareStatement(sql);
			pre.setString(1, book.getBookingDate());
			pre.setString(2, book.getWareHouseName());
			pre.setString(3, book.getVehicleNumber());
			pre.setString(4, book.getLoadingPoint());
			pre.setString(5, book.getMaterial().toString());
			pre.setString(6, book.getQuantity().toString());
			pre.setString(7, book.getQuality().toString());
			pre.setString(8, book.getAmount().toString());
			pre.executeUpdate();
			con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<ProductOutsourceDetails> getProductDetails(ProductOutsourceDetails details){
		ArrayList<ProductOutsourceDetails> list = new ArrayList<ProductOutsourceDetails>();
		try{
			con = new DBCon().getConnection();
			String sql = "select * from productbooking";
			PreparedStatement pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while(res.next()){
				ProductOutsourceDetails det = new ProductOutsourceDetails();
				det.setId(res.getString(1));
				det.setWareHouseName(res.getString(2));
				det.setVehicleNumber(res.getString(3));
				det.setLoadingPoint(res.getString(4));
				det.setMaterial(res.getString(5));
				det.setQuantity(res.getString(6));
				det.setQuality(res.getString(7));
				det.setAmount(res.getString(8));
				det.setRfid(res.getString(9));
				det.setStatus(res.getString(10));
				det.setBookingDate(res.getString(11));
				list.add(det);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	
	public int bookProduct1(ProductBook product){
		int x = 0;
		try{
			String status = "Pending....";
			con = new DBCon().getConnection();
			java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
			
			String sql = "insert into productbooking (whareHouse,vehicleNumber,loadingPoint,material,quantity,quality,amount,rfid,bookingstatus,bookDate) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pre = con.prepareStatement(sql);
			
			pre.setString(1,product.getWarehouse());
			pre.setString(2, product.getVehicleNumber());
			pre.setString(3, product.getLoadingPoint());
			pre.setString(4, product.getMaterial());
			pre.setString(5, product.getQuantity());
			pre.setString(6, product.getQuality());
			pre.setString(7, product.getAmount().trim());
			pre.setString(8, product.getRfid().toString().trim());
			
			pre.setString(9, status);
			pre.setTimestamp(10, date);
			pre.executeUpdate();
			x = 1;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return x;
	}
	public ArrayList<getmyData> getProductDetails1(getmyData details){
		ArrayList<getmyData> list = new ArrayList<getmyData>();
		try{
			
			con = new DBCon().getConnection();
			String sql = "select * from productbooking where whareHouse='"+details.getWhereh().toString()+"'";
			PreparedStatement pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while(res.next()){
				getmyData det = new getmyData();
				det.setId(res.getString(1));
				det.setWareHouseName(res.getString(2));
				det.setVehicleNumber(res.getString(3));
				det.setLoadingPoint(res.getString(4));
				det.setMaterial(res.getString(5));
				det.setQuantity(res.getString(6));
				det.setQuality(res.getString(7));
				det.setAmount(res.getString(8));
				det.setRfid(res.getString(9));
				det.setStatus(res.getString(10));
				det.setBookingDate(res.getString(11));
				list.add(det);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<getDateDetails> getProductDetails2(getDateDetails details){
		ArrayList<getDateDetails> list = new ArrayList<getDateDetails>();
		try{
			
			con = new DBCon().getConnection();
			String sql = "select * from productbooking where bookDate='"+details.getMydate().toString()+"'";
			PreparedStatement pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			while(res.next()){
				getDateDetails det = new getDateDetails();
				det.setId(res.getString(1));
				det.setWareHouseName(res.getString(2));
				det.setVehicleNumber(res.getString(3));
				det.setLoadingPoint(res.getString(4));
				det.setMaterial(res.getString(5));
				det.setQuantity(res.getString(6));
				det.setQuality(res.getString(7));
				det.setAmount(res.getString(8));
				det.setRfid(res.getString(9));
				det.setStatus(res.getString(10));
				det.setBookingDate(res.getString(11));
				list.add(det);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
	public int bookProduct5(ProductInwardDetails product){
		int x = 0;
		try{
			String status = "Pending....";
			con = new DBCon().getConnection();
			java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
			
			String sql = "insert into outward (whareHouse,vehicleNumber,loadingPoint,material,quantity,quality,amount,rfid,bookDate) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pre = con.prepareStatement(sql);
			
			pre.setString(1,product.getWarehouse());
			pre.setString(2, product.getVehicleNumber());
			pre.setString(3, product.getLoadingPoint());
			pre.setString(4, product.getMaterial());
			pre.setString(5, product.getQuantity());
			pre.setString(6, product.getQuality());
			pre.setString(7, product.getAmount().trim());
			pre.setString(8, product.getRfid().toString().trim());
			
			
			pre.setTimestamp(9, date);
			pre.executeUpdate();
			con.close();
			Connection con3 = new DBCon().getConnection();
			Statement st = con3.createStatement();
			String status1 = "Delivered...";
			st.executeUpdate("update productbooking set bookingstatus='"+status1+"' where rfid='"+product.getRfid().toString().trim()+"'");
			
			
			
			x = 1;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return x;
	}
	
	public void checkUpdates(){
		StringBuilder build = new StringBuilder();
		String details = "";
		try{
			con = new DBCon().getConnection();
			String sql = "select * from outward";
			PreparedStatement pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			Map<String, String> map = new HashMap<String,String>();
			while(res.next()){
				int qua = Integer.parseInt(res.getString(6));
				if(qua<=2){
					map.put(res.getString(2), res.getString(5));
				}
				
				
				
				
			}
			if(!map.isEmpty()){
				 Iterator it = map.entrySet().iterator();
				 while(it.hasNext()){
					  Map.Entry pair = (Map.Entry)it.next();
					  build.append(pair.getKey()+"-"+pair.getValue()+",");
				 }
				 details = build.toString();
			}
			if(!details.equals("")){
				new samp();
				samp.sendsms("9731929530", details+" should deliverd these products");
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void sellDat(String qua,String rfid){
		try{
			con = new DBCon().getConnection();
			Connection con1 = new DBCon().getConnection();
			String sql = "select * from outward where rfid='"+rfid.trim()+"'";
			PreparedStatement pre = con.prepareStatement(sql);
			ResultSet res = pre.executeQuery();
			if(res.next()){
			int x = Integer.parseInt(res.getString(6));
			int y = x-1;
			String data = Integer.toString(y);
			con.close();
			
			String sql1 = "update outward set quantity=? where rfid=?";
			PreparedStatement pred = con1.prepareStatement(sql1);
			pred.setString(1, data);
			pred.setString(2, rfid.trim());
			pred.executeUpdate();
			
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
