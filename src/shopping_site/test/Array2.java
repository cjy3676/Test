package shopping_site.test;

import java.util.ArrayList;

public class Array2 {
	public static ArrayList<member> view_member() {
		member m1 = new member("아이언맨","10");
		member m2 = new member("스파이더맨","20");
		member m3 = new member("토르","30");
		
		ArrayList<member> list = new ArrayList<member>();
		list.add(m1);
		list.add(m2);
		list.add(m3);
		
		return list;
	}
}
