import java.io.*;
import java.net.*;

public class ServeurUDP
{
	public static void main( String[] args )
	{
		InetAddress addr = InetAddress.getLocalHost();
		System.out.println( "adresse=" +addr.getHostName() );
		byte[] data = s.getBytes();
		DatagramPacket packet = new DatagramPacket( data, data.lenght, addr, 1234 );
		DatagramSocket sock = new DatagramSocket();
		sock.send(packet);
		sock.close();
	}
}