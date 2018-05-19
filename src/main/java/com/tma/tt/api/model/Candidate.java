package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "candidates")
@Entity
@Table(name="candidate")
public class Candidate implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

	@JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="candidate_id")
	private int candidateId;

	@Basic
	@Column(name = "full_name", nullable = false, insertable = true, updatable = true, length = 45)
	private String fullName;

	@Basic
	@Column(name = "phone", nullable = true, insertable = true, updatable = true, length = 45)
	private String phone;

	@Basic
	@Column(name = "email", nullable = true, insertable = true, updatable = true, length = 45)
	private String email;

	@Basic
	@Column(name = "university", nullable = true, insertable = true, updatable = true, length = 45)
	private String university;

	@Basic
	@Column(name = "faculty", nullable = true, insertable = true, updatable = true, length = 45)
	private String faculty;

	@Basic
	@Column(name = "graduation_year", nullable = true, insertable = true, updatable = true, length = 45)
	private String graduationYear;

	@Basic
	@Column(name = "position", nullable = true, insertable = true, updatable = true, length = 45)
	private String position;

	@Basic
	@Column(name = "description", nullable = true, insertable = true, updatable = true, length = 255)
	private String description;

	@Transient
	private boolean reviewed;

	public int getCandidateId() {
		return candidateId;
	}

	public void setCandidateId(int candidateId) {
		this.candidateId = candidateId;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public String getFaculty() {
		return faculty;
	}

	public void setFaculty(String faculty) {
		this.faculty = faculty;
	}

	public String getGraduationYear() {
		return graduationYear;
	}

	public void setGraduationYear(String graduationYear) {
		this.graduationYear = graduationYear;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
