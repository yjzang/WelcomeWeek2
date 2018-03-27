package kr.co.bit.day4;

import java.util.ArrayList;
import java.util.List;

public class MemberList {

	List<Member> list = new ArrayList<Member>();
	
	
	public void save(Member mb) {
		
		list.add(mb);
	}
	 
}
