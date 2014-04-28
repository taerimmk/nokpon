/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.june.app.user.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonManagedReference;


/**
 * Simple JavaBean domain object representing an person.
 * 
 * @author Ken Krebs
 */
@Entity
//@JsonSerialize
@Table(name = "NOK_USER")
public class UserInfo {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "seq")
	protected Integer seq;
	
	@Column(name = "USER_ID")
    @NotEmpty
    @Pattern(regexp ="^[a-z0-9_]{4,20}$")
	protected String userId;
	
	@Column(name = "name")
    @NotEmpty
	protected String name;
	
	@Column(name = "email")
	@NotEmpty
	@Email
	protected String email;
	
	@Column(name = "status")
	protected String status;
	
	
	@Column(name = "password")
	@NotEmpty
	@Pattern(regexp ="^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$")
	private String password;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "userInfo" ,fetch=FetchType.EAGER )
    private Set<RoleInfo> roleInfos;
	
	@Transient
	private String passwordCert;
	
	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@JsonManagedReference
	public Set<RoleInfo> getRoleInfos() {
		return roleInfos;
	}

	public void setRoleInfos(Set<RoleInfo> roleInfos) {
		this.roleInfos = roleInfos;
	}

	public String getPasswordCert() {
		return passwordCert;
	}

	public void setPasswordCert(String passwordCert) {
		this.passwordCert = passwordCert;
	}

	@Override
	public String toString() {
		return "UserInfo [seq=" + seq + ", userId=" + userId + ", name=" + name
				+ ", email=" + email + ", status=" + status + ", password="
				+ password + ", roleInfos=" + roleInfos + ", passwordCert="
				+ passwordCert + "]";
	}


}
