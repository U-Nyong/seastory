package vo;

public class Fish {
	
	private int id;
	private String kind;
	private int price;
	private String image;
	private String country;
	private int readcount;

	public Fish(int id, String kind, int price, String image, String country,
		int readcount) {

		this.id = id;
		this.kind = kind;
		this.price = price;
		this.image = image;
		this.country = country;
		this.readcount = readcount;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
    public String getKind(){
    	return kind;
    }
	
	public void setKind(String kind) {
		this.kind = kind;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public int getReadcount() {
		return readcount;
	}
	
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
		
}
