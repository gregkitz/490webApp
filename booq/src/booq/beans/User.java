package booq.beans;


import java.io.Serializable;

public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String username;
	private String passwd;
	private String name;
	private String email;
	private String signDate;
	private String lastDate;
	
	public User(){
	}
	
	public User(String username, String passwd, String name, String email){
		this.username = username;
		this.passwd = passwd;
		this.name = name;
		this.email = email;
	}
	
	public String getUsername(){
		return username;
	}
	
	public void setUsername(String username){
		this.username = username;
	}
	
	public String getPasswd(){
		return passwd;
	}
	
	public void setPasswd(String passwd){
		this.passwd = passwd;
	}
	
	public String getName(){
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	public String getSignDate(){
		return signDate;
	}
	
	public void setSignDate(String signDate){
		this.signDate = signDate;
	}
	
	public String getLastDate(){
		return lastDate;
	}
	
	public void setLastDate(String lastDate){
		this.lastDate = lastDate;
	}
}
