package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "roles")
@Entity
@Table(name="role")
public class Role implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

	@JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="role_id")
	private Long roleId;

	@Enumerated(EnumType.STRING)
	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private RoleName name;

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public RoleName getName() {
		return name;
	}

	public void setName(RoleName name) {
		this.name = name;
	}
}
