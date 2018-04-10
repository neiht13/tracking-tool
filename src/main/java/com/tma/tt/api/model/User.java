package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
}
