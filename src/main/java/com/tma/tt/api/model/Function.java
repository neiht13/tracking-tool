package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "functions")
@Entity
@Table(name="function")
public class Function implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

	@JsonApiId
	@Id
	@Enumerated(EnumType.STRING)
	@Column(name="function_id")
	private FunctionEnum functionId;

	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private String name;

	public FunctionEnum getFunctionId() {
		return functionId;
	}

	public void setFunctionId(FunctionEnum functionId) {
		this.functionId = functionId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
