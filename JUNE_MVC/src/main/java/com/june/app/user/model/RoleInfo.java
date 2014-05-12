
package com.june.app.user.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;


/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ken Krebs
 */
@Entity
@Table(name = "NOK_ROLE")
public class RoleInfo {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seq")
	protected Integer seq;
	
	
	@Column(name = "role")
    @NotEmpty
	protected String role;


	public Integer getSeq() {
		return seq;
	}


	public void setSeq(Integer seq) {
		this.seq = seq;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "RoleInfo [seq=" + seq + ", role=" + role + "]";
	}
	
	
	
	
	
}
