package booq.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import booq.beans.Book;


public class DBConnectionPool {
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public ArrayList<Connection> getConnList() {
		return connList;
	}

	public void setConnList(ArrayList<Connection> connList) {
		this.connList = connList;
	}

	public String getDriver() {
		return driver;
	}

	final String driver = "org.gjt.mm.mysql.Driver";
	String url;
	String username;
	String passwd; 
	ArrayList<Connection> connList = new ArrayList<Connection>();
	
	public DBConnectionPool(String url, String username, String passwd) throws Exception{
		this.url = url;
		this.username = username;
		this.passwd = passwd; 
		
		Class.forName(driver);
	}
	
	public Connection getConnection() throws Exception{
		if(connList.size() > 0){
			Connection conn = connList.get(0);
			if(conn.isValid(10)){
				return conn;
			}
		}
		
		return DriverManager.getConnection(url, username, passwd);
	}
	
	public void returnConnection(Connection conn) throws Exception{
		connList.add(conn);
	}
	
	public void closeAll(){
		for(Connection conn: connList){
			try{
				conn.close();
			}catch(Exception e){}
		}
	}
	
//----special methods // 
	
	
//----searching=====// 
	public ArrayList<Book> getSearchResults(String keyword) {
	    return BookPeer.searchBooks(this, keyword);
	    }
	
	
//---get books in category --//
	
//---get book details-----// 
	
//----ordering operations ----// 
	
//insert order--//
	
	
}
