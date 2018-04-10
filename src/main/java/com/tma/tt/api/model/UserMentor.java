package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;
import io.katharsis.resource.annotations.JsonApiToOne;

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

	@JsonApiToOne
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

	@JsonApiToOne
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "mentor_id", referencedColumnName = "user_id")
	private User mentor;

	@JsonApiToOne
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "area_id", referencedColumnName = "area_id")
	private Area area;

	public int getUserMentorId() {
		return userMentorId;
	}

	public void setUserMentorId(int userMentorId) {
		this.userMentorId = userMentorId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getMentor() {
		return mentor;
	}

	public void setMentor(User mentor) {
		this.mentor = mentor;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}
}
