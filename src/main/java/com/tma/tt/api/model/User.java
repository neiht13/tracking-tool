package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "users")
@Entity
@Table(name="user")
public class User implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_id")
    private int userId;

	@Basic
	@Column(name = "user_name", nullable = false, insertable = true, updatable = true, length = 45)
	private String userName;

	@Basic
	@Column(name = "password", nullable = false, insertable = true, updatable = true, length = 45)
	private String password;

	@Basic
	@Column(name = "role", nullable = false, insertable = true, updatable = true, length = 45)
	private String role;

	@Basic
	@Column(name = "full_name", nullable = false, insertable = true, updatable = true, length = 45)
	private String fullName;

	@Enumerated(EnumType.STRING)
	@Column(name = "status")
	private UserStatus status;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public UserStatus getStatus() {
		return status;
	}

	public void setStatus(UserStatus status) {
		this.status = status;
	}
}
