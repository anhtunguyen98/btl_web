package models;

import java.sql.Date;

public class Product {
	private int id;
	private String name,phukien,baohanh,thongtin,img1,img2,img3,img4;
	int gia;
	public Product() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhukien() {
		return phukien;
	}
	public void setPhukien(String phukien) {
		this.phukien = phukien;
	}
	public String getBaohanh() {
		return baohanh;
	}
	public void setBaohanh(String baohanh) {
		this.baohanh = baohanh;
	}
	public String getThongtin() {
		return thongtin;
	}
	public void setThongtin(String thongtin) {
		this.thongtin = thongtin;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public Product(int id, String name, String phukien, String baohanh, String thongtin, int gia, String img1,
			String img2, String img3, String img4) {
		super();
		this.id = id;
		this.name = name;
		this.phukien = phukien;
		this.baohanh = baohanh;
		this.thongtin = thongtin;
		this.gia = gia;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
	}
	
	
	
	
	
	
	

}
