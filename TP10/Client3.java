// Client3.java 

import java.io.*;
import java.net.*;

import org.apache.http.HttpEntity;
import org.apache.http.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.impl.client.*;

import javax.json.*;

import java.util.Scanner;

public class Client3
{
	public static void main( String[] args )
	{
		try {
			while (true) {
				//System.out.println( "Test " );
				CloseableHttpClient client = HttpClients.createDefault();
				String url = "http://omdbapi.com/?apikey=751ea6aa&t=" + args[0];
				HttpGet request = new HttpGet(url);
		
				System.out.println( "Executing request " + request.getRequestLine() );
				CloseableHttpResponse resp = client.execute(request);

				System.out.println( "Response Line: " + resp.getStatusLine() );
				System.out.println( "Response Code: " + resp.getStatusLine().getStatusCode() );
				InputStreamReader isr = new InputStreamReader( resp.getEntity().getContent() );
				JsonReader reader = Json.createReader(isr);
				JsonObject jsonObject = reader.readObject();
				reader.close();
				isr.close();
				System.out.println( "duree=" + jsonObject.getString("Runtime") );
//				System.out.println( "duree=" + jsonObject.getInt("Runtime") );

			/*	Scanner sc = new Scanner(System.in);
				System.out.println("Veuillez saisir un titre :");
				String str = sc.nextLine();
				System.out.println("Vous avez saisi : " + str);
			*/	
				JsonArray tab = jsonObject.getJsonArray( "Ratings" );
				for( int i=0; i<tab.size(); i++ )
				{
					JsonObject ji = tab.getJsonObject( i );// chercher dans la doc Java comment recuperer un objet Json dans un tableau
					System.out.println( "affichage du tableau " + ji.getString("Source"));
					if (ji.equals("Rotten Tomatoes"));
						System.out.println( "value du tableau " + ji.getString("Value"));
						/*/JsonObject ko = tab.getJsonObject( 1 );
						lp = ko.getString("Value");
						//parse.integer*/
				}
			}
		}
		catch( Exception ex ) {
			System.out.println( "erreur !" ) ;
			System.exit(1);
			ex.printStackTrace();
		}
	}
}