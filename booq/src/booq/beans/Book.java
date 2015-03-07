package booq.beans;

public class Book {
	private double price; 
	private String title; 
	private String author; 
	private int id; 
	private int stock;
	private int genreId;
	private String genreName;
	private String des;
  
	public double getPrice()       { return price; }
	public String getTitle()       { return title; }
	public String getAuthor()      { return author; }
	public int    getId()          { return id; }
	public int    getStock()       { return stock; }
	public int    getGenreId()     { return genreId; }
	public String getGenreName()   { return genreName; }
	public String getDescription() { return des; }
	
	public void setPrice(double price)         { this.price = price; }
	public void setTitle(String title)         { this.title = title; }
	public void setAuthor(String author)       { this.author = author; }
	public void setId(int id)                  { this.id = id; }
	public void setStock(int stock)            { this.stock = stock; }
	public void setGenreId(int genreId)        { this.genreId = genreId; }
	public void setGenreName(String genreName) { this.genreName = genreName; }
	public void setDescription(String des)     { this.des = des; }  
  
}
