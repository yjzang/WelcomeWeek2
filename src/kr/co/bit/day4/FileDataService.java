package kr.co.bit.day4;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

public class FileDataService {

	public Date getDateTime() {
		Date date = null;
		date = new Date();
		
		return date;
		
	}
	
	public ArrayList getFileData(String path) throws IOException {
		ArrayList list = new ArrayList();
		File file = new File(path);
		if(file.exists()) {
			System.out.println(file.getName());
			FileReader fr = new FileReader(file);
			BufferedReader br = new BufferedReader(fr);
			String line =null;
			while((line=br.readLine())!=null) {
				list.add(this.splitData(line));
				
				System.out.println(line);
			}
			br.close();
			fr.close();
		}
		return list;
	}
	
	
	private Student splitData(String line) {
		Student st = null;
		
		return st;
	}
	
}
