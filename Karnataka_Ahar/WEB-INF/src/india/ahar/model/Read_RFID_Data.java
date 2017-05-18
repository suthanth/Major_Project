package india.ahar.model;


import java.io.FileWriter;

import jssc.SerialPort;
import jssc.SerialPortException;


public class Read_RFID_Data {

	/**
	 * @param args
	 * @throws SerialPortException 
	 */
	public static void main(String[] args) throws SerialPortException {
		// TODO Auto-generated method stub
		 SerialPort serialPort = new SerialPort("COM20");
		 try {
			
			  serialPort.openPort();//Open serial port
	          			 while(true){
	          
	          				 serialPort.setParams(38400, 8, 1, 0);//Set params.

	            byte[] buffer = serialPort.readBytes(20);
	            String decoded = new String(buffer, "UTF-8");
	            //Read 10 bytes from serial port
	            String s = new String(buffer);
	            System.out.println(decoded.trim());
	            System.out.println("-----------------");
	            EntityClass entity = new EntityClass();
	           FileWriter fi = new FileWriter("data.txt");
	           fi.write(decoded);
	           fi.close();
			 }
	          			
	        }
	        catch (Exception ex) {
	            System.out.println(ex);
	        }
		 serialPort.closePort();
	}

}
