package TrainerDataSave;

public class TrainerInfo {
	private String fname;
	private String lname;
	private String emailid;
	private String pass;
	private String sal;
     public TrainerInfo(String fname, String lname, String emailid, String pass, String sal) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.emailid = emailid;
		this.pass = pass;
		this.sal = sal;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSal() {
		return sal;
	}
	public void setSal(String sal) {
		this.sal = sal;
	}
     

	
	
	

}
