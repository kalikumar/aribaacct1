package example.nosql;

import java.util.Map.Entry;
import java.util.Set;

import com.cloudant.client.api.ClientBuilder;
import com.cloudant.client.api.CloudantClient;
import com.cloudant.client.api.Database;
import com.cloudant.client.org.lightcouch.CouchDbException;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class CloudantClientMgr {

	private static CloudantClient cloudant = null;
	private static Database db = null;

	//private static String databaseName = "login";

	private static String user = "42985fbc-d366-4541-aa53-8bf12f82978c-bluemix";
	private static String password = "eee3a79b2ac94b4d3cdf299a8f975cf923620a6618cd0891e8ac9061408cfd85";

	private static void initClient() {
	
		if (cloudant == null) {
			synchronized (CloudantClientMgr.class) {
			
				cloudant = createClient();

			}
		}
	}

	private static CloudantClient createClient() {
		String VCAP_SERVICES = System.getenv("VCAP_SERVICES");
		String serviceName = null;
		 db = null;
		if (VCAP_SERVICES != null) {
			// When running in Bluemix, the VCAP_SERVICES env var will have the credentials for all bound/connected services
			// Parse the VCAP JSON structure looking for cloudant.
			JsonObject obj = (JsonObject) new JsonParser().parse(VCAP_SERVICES);
			Entry<String, JsonElement> dbEntry = null;
			Set<Entry<String, JsonElement>> entries = obj.entrySet();
			// Look for the VCAP key that holds the cloudant no sql db information
			for (Entry<String, JsonElement> eachEntry : entries) {
				if (eachEntry.getKey().toLowerCase().contains("cloudant")) {
					dbEntry = eachEntry;
					break;
				}
			}
			if (dbEntry == null) {
				throw new RuntimeException("Could not find cloudantNoSQLDB key in VCAP_SERVICES env variable");
			}

			obj = (JsonObject) ((JsonArray) dbEntry.getValue()).get(0);
			serviceName = (String) dbEntry.getKey();
			System.out.println("Service Name - " + serviceName);

			obj = (JsonObject) obj.get("credentials");

			user = obj.get("username").getAsString();
			password = obj.get("password").getAsString();

		} else {
			System.out.println("VCAP_SERVICES env var doesn't exist: running locally.");
		}

		try {
			System.out.println("Connecting to Cloudant : " + user);
			CloudantClient client = ClientBuilder.account(user)
					.username(user)
					.password(password)
					.build();
			return client;
		} catch (CouchDbException e) {
			throw new RuntimeException("Unable to connect to repository", e);
		}
	}

	public static Database getDB(String databaseName) {
		cloudant =null;
		if (cloudant == null) {
			initClient();
		}
		 db = null;
		if (db == null) {
			try {
				System.out.println(databaseName);
				db = cloudant.database(databaseName, true);
			} catch (Exception e) {
				throw new RuntimeException("DB Not found", e);
			}
		}
		return db;
	}

	private CloudantClientMgr() {
	}
}
