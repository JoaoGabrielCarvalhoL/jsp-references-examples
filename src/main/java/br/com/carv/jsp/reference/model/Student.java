package br.com.carv.jsp.reference.model;

import java.io.Serial;
import java.io.Serializable;
import java.util.UUID;

public class Student implements Serializable {
	@Serial
	private static final long serialVersionUID = 0L;
	
	private UUID id;
	
	private String firstName;
	
	private String lastName;
	
	private Boolean isVipCustomer;
	
	
	public Student(String firstName, String lastName, Boolean isVipCustomer) {
		this.id = UUID.randomUUID();
		this.firstName = firstName;
		this.lastName = lastName;
		this.isVipCustomer = isVipCustomer;
	}

	public UUID getId() {
		return id;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Boolean getIsVipCustomer() {
		return isVipCustomer;
	}

	public void setIsVipCustomer(Boolean isVipCustomer) {
		this.isVipCustomer = isVipCustomer;
	}
	
	
	
}
