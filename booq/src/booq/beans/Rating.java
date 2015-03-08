package booq.beans;

public class Rating {
	private int custId;
	private int bookId;
	private String date;
	private int ratingNum;
	private String des;

	public int getCustId()  { return custId; }
	public int getBookId()  { return bookId; }
	public String getDate() { return date; }
	public int ratingNum()  { return ratingNum; }
	public String getDes()  { return des; }
	
	public void setCustId(int custId)  		{ this.custId = custId; }
	public void setBookId(int bookId)  		{ this.bookId = bookId; }
	public void setDate(String date)   		{ this.date = date; }
	public void setRatingNum(int ratingNum) { this.ratingNum = ratingNum; }
	public void setDes(String des)     		{ this.des = des; }
}
