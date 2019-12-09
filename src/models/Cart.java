package models;

import java.util.*;

public class Cart {
	private int idcart;
	private ArrayList<Item> list;
	public Cart() {
		list=new ArrayList<Item>();
	}
	
	public Cart(ArrayList<Item> list) {
		super();
		this.list = list;
	}

	public int getIdcart() {
		return idcart;
	}
	public void setIdcart(int idcart) {
		this.idcart = idcart;
	}
	public ArrayList<Item> getList() {
		return list;
	}
	public void setList(ArrayList<Item> list) {
		this.list = list;
	}
	public void insertToCart(Product product,int quantity) {
		boolean bln=false ;
		for(Item item:list) {
			if(item.getProduct().getId()==product.getId()) {
				bln=true;
				int index=list.indexOf(item);
				int sl=item.getQuantity();
				sl=sl+quantity;
				item.setQuantity(sl);
				list.set(index, item);
				break;
			}
		}
		if(bln==false) {
			Item item=new Item(product,quantity);
			list.add(item);
		}
		
	}
	public boolean deleteFromCart(Product product) {
		boolean bln=false;
		for(Item item:list) {
			if(item.getProduct().getId()==product.getId()) {
				bln=true;
				list.remove(item);
				break;
			}
		}
		return bln;
	}
	public int total() {
		int count = 0;
		for(Item item:list) {
			count+=item.getGia();
		}
		return count;
	}
	

}
