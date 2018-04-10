package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "tests")
@Entity
@Table(name="test")
public class Test implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="test_id")
    private int testId;
    
    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 45)
    private String description;
    
}
