package example.nosql;


import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import example.nosql.GeoIPv4;

public class LookUpProgram {

	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	  {
		System.out.println("hi");
        long ipAddress = new BigInteger(InetAddress.getByName("72.229.28.185").getAddress()).longValue();
  
        System.out.println("By String IP address: \n" +
                GeoIPv4.getLocation("72.229.28.185"));

        System.out.println("By long IP address: \n" +
                GeoIPv4.getLocation(ipAddress));

        System.out.println("By InetAddress IP address: \n" +
                GeoIPv4.getLocation(InetAddress.getByName("72.229.28.185")));
	  }
    
}