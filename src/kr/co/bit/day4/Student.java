package kr.co.bit.day4;

public class Student {

	
	private String hakbun;
	private String email;
	private String kor;
	private String eng;
	private String math;
	private String science;
	private String history;
	private String total;
	private String damim;
	private String achieve;
	private String local;
	
	
	
	public Student() {
	}
	public Student(String hakbun, String email, String kor, String eng, String math, String science, String history,
			String total, String damim, String achieve, String local) {
		this.hakbun = hakbun;
		this.email = email;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.science = science;
		this.history = history;
		this.total = total;
		this.damim = damim;
		this.achieve = achieve;
		this.local = local;
	}
	public String getHakbun() {
		return hakbun;
	}
	public void setHakbun(String hakbun) {
		this.hakbun = hakbun;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getKor() {
		return kor;
	}
	public void setKor(String kor) {
		this.kor = kor;
	}
	public String getEng() {
		return eng;
	}
	public void setEng(String eng) {
		this.eng = eng;
	}
	public String getMath() {
		return math;
	}
	public void setMath(String math) {
		this.math = math;
	}
	public String getScience() {
		return science;
	}
	public void setScience(String science) {
		this.science = science;
	}
	public String getHistory() {
		return history;
	}
	public void setHistory(String history) {
		this.history = history;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getDamim() {
		return damim;
	}
	public void setDamim(String damim) {
		this.damim = damim;
	}
	public String getAchieve() {
		return achieve;
	}
	public void setAchieve(String achieve) {
		this.achieve = achieve;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	@Override
	public String toString() {
		return "Student [hakbun=" + hakbun + ", email=" + email + ", kor=" + kor + ", eng=" + eng + ", math=" + math
				+ ", science=" + science + ", history=" + history + ", total=" + total + ", damim=" + damim
				+ ", achieve=" + achieve + ", local=" + local + "]";
	}
	
	
	
	
	
}
