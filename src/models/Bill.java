package models;

public class Bill {
	private int id;
	private User user;
	private String fistname,lastname,street_address,city,phone,note;
	private Cart cart;
	private int total;
	public Bill() {
		
	}
	
	
	public Bill(int id, User user, String fistname, String lastname, String street_address, String city, String phone,
			String note, Cart cart) {
		super();
		this.id = id;
		this.user = user;
		this.fistname = fistname;
		this.lastname = lastname;
		this.street_address = street_address;
		this.city = city;
		this.phone = phone;
		this.note = note;
		this.cart = cart;
		
	}


	public Bill(User user, String fistname, String lastname, String street_address, String city, String phone,
			String note, Cart cart) {
		super();
		this.user = user;
		this.fistname = fistname;
		this.lastname = lastname;
		this.street_address = street_address;
		this.city = city;
		this.phone = phone;
		this.note = note;
		this.cart = cart;
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getFistname() {
		return fistname;
	}
	public void setFistname(String fistname) {
		this.fistname = fistname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getStreet_address() {
		return street_address;
	}
	public void setStreet_address(String street_address) {
		this.street_address = street_address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public int getTotal() {
		return cart.total();
	}

	public void setTotal() {
		this.total=cart.total();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

}
