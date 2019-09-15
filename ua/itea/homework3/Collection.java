package ua.itea.homework3;

import java.util.HashMap;
import java.util.Map;

public class Collection {

	public Collection() {
		super();
	}

	public Map<Integer, String> getCollection () {
		Map <Integer, String> users = new HashMap <Integer,String>();
		users.put(1, "Alex Gasperskyy");
		users.put(2, "Oksana Gasperskaya");
		users.put(3, "Anton Lipovezkiy");
		users.put(4, "Alexandr Davidchenko");
		users.put(5, "Gennadiy Bondarenko");
		users.put(6, "Yaroslav Sarnackyy");
	return users;	
	}
	
}
