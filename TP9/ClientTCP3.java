//ClientTCP1.java

import java.io.*;
import java.net.*;

public class ClientTCP3
{
	public static void main( String[] args )
	{
		try {		
			Socket socket = new Socket( "localhost", 2016 );
			DataOutputStream dOut = new DataOutputStream( socket.getOutputStream() );
			dOut.writeUTF( args[0] );
			//String rev = new StringBuilder(dOut.readUTF()).reverse().toString();
			socket.close();
		}
		catch( Exception ex ) {
			System.out.println( "erreur !" ) ;
			ex.printStackTrace();
		}
	}
}