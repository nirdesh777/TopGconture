 package model;

import java.io.File;

import javax.servlet.http.Part;

import resources.MyConstants;

public class User {
	
	@Override
	public String toString() {
		return "User [fullName=" + fullName + ", role=" + role + ", address=" + address + ", phone=" + phone
				+ ", email=" + email + ", username=" + username + ", password=" + password + ", imageUrlFromPart="
				+ imageUrlFromPart + "]";
	}


	String fullName,role,address, phone, email,  username, password, imageUrlFromPart;

	public User() {}
	
	public User(String fullName, String role, String address, String phone,String email,
			String username, 
			String password, Part part){
		this.fullName = fullName;
		this.role = role;
		this.address= address;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
		this.imageUrlFromPart = getImageUrl(part);
	}
		
	public String getImageUrlFromPart() {
		return imageUrlFromPart;
	}
	
	public void setImageUrlFromPart(Part part) {
		this.imageUrlFromPart = getImageUrl(part);
	}
	
	public String getfullName() {
		return fullName;
	}
	public void setfullName(String fullName) {
		this.fullName = fullName;
	}
	public String getrole() {
		return role;
	}
	public void setrole(String role) {
		this.role = role;
	}
	public String getaddress() {
		return address;
	}
	public void setaddress(String address) {
		this.address = address;
	}
	public String getphone() {
		return phone;
	}
	public void setphone(String phone) {
		this.phone = phone;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username	;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
		
	
	private String getImageUrl(Part part) {
		String savePath = MyConstants.IMAGE_DIR_SAVE_PATH;
		File fileSaveDir = new File(savePath);
		String imageUrlFromPart = null;
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdir();
		}
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				imageUrlFromPart = s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		if(imageUrlFromPart == null || imageUrlFromPart.isEmpty()) {
			imageUrlFromPart= "download.png";
		}
		return imageUrlFromPart;
	}
}
