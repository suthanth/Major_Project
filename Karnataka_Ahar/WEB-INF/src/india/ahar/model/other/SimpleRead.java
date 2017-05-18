package india.ahar.model.other;

import jssc.SerialPort;


public class SimpleRead {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 try {
			 SerialPort serialPort = new SerialPort("COM8");
			 while(true){
	            serialPort.openPort();//Open serial port
	           serialPort.setParams(9600, 8, 1, 0);//Set params.
	        	
	            byte[] buffer = serialPort.readBytes(11);
	            String decoded = new String(buffer, "UTF-8");
	            //Read 10 bytes from serial port
	            String s = new String(buffer);
	            System.out.println(decoded);
	            serialPort.closePort();//Close serial port
			 }
	        }
	        catch (Exception ex) {
	            System.out.println(ex);
	        }
	}

}
