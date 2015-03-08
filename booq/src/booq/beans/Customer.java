package booq.beans;

public class Customer {
	private int id;
	private String name;
	private String email;
	private String stAddr;
	private String city;
	private String state;
	private String country;
	private String zip;
	private String apptNo;
	
	public int    getId() 			{ return id; }
    public String getcName() 		{ return name; }
    public String getEmail() 		{ return email; }
    public String getStreetAddr() 	{ return stAddr; }
    public String getCity() 		{ return city; }
    public String getState() 		{ return state; }
    public String getCountry() 		{ return country; }
    public String getZip() 			{ return zip; }
    public String getApptNo() 		{ return apptNo; }
    
    public void setId(int id)  					{ this.id = id; }
    public void setcName(String cName) 			{ this.name = cName; }
    public void setEmail(String email)			{ this.email = email; }
    public void setStAddr(String stAddr) 		{ this.stAddr = stAddr; }
    public void setCity(String city) 			{ this.city = city; }
    public void setState(String state) 			{ this.state = state; }
    public void setCountry(String country) 		{ this.country = country; }
    public void setZip(String zip) 				{ this.zip = zip; }
    public void setApptNo(String apptNo) 		{ this.apptNo = apptNo; }
}
