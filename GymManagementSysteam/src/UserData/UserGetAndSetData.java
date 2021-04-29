package UserData;

public class UserGetAndSetData {
	private String fnameString ;
	private String lNamString;
	private String emailString;
	private String pass;
	private String cityString;
	private String genderString;
	
	public UserGetAndSetData() {
		super();
	}
	public UserGetAndSetData(String fnameString, String lNamString, String emailString, String pass, String cityString,
			String genderString) {
		super();
		this.fnameString = fnameString;
		this.lNamString = lNamString;
		this.emailString = emailString;
		this.pass = pass;
		this.cityString = cityString;
		this.genderString = genderString;
		
	}
	public String getFnameString() {
		return fnameString;
	}
	public void setFnameString(String fnameString) {
		this.fnameString = fnameString;
	}
	public String getlNamString() {
		return lNamString;
	}
	public void setlNamString(String lNamString) {
		this.lNamString = lNamString;
	}
	public String getEmailString() {
		return emailString;
	}
	public void setEmailString(String emailString) {
		this.emailString = emailString;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getCityString() {
		return cityString;
	}
	public void setCityString(String cityString) {
		this.cityString = cityString;
	}
	public String getGenderString() {
		return genderString;
	}
	public void setGenderString(String genderString) {
		this.genderString = genderString;
	}
	
	
	
	
	
	
	
	
	

}
