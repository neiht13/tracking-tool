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

@JsonApiResource(type = "user-mentors")
@Entity
@Table(name="user_mentor")
public class UserMentor implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_mentor_id")
    private int userMentorId;
}
