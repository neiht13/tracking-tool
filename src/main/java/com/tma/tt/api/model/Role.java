package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@JsonApiResource(type = "roles")
@Entity
@Table(name="role")
public class Role implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

	@JsonApiId
	@Id
	@Enumerated(EnumType.STRING)
	@Column(name="role_id")
	private RoleEnum roleId;

	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private String name;

	@JsonApiRelation
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "role_function",
			joinColumns = @JoinColumn(name = "role_id"),
			inverseJoinColumns = @JoinColumn(name = "function_id"))
	private Set<Function> functions = new HashSet<>();

	public RoleEnum getRoleId() {
		return roleId;
	}

	public void setRoleId(RoleEnum roleId) {
		this.roleId = roleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Function> getFunctions() {
		return functions;
	}

	public void setFunctions(Set<Function> functions) {
		this.functions = functions;
	}
}
