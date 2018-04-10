package com.tma.tt.api.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;
import io.katharsis.resource.annotations.JsonApiToOne;

@JsonApiResource(type = "user-feedbacks")
@Entity
@Table(name="user_feedback")
public class UserFeedback implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_feedback_id")
    private int userFeedbackId;

	@JsonApiToOne
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

	@Basic
	@Column(name = "description", nullable = false, insertable = true, updatable = true, length = 45)
	private String description;

	@JsonApiToOne
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "feeder", referencedColumnName = "user_id")
	private User feeder;

	@Basic
	@Column(name = "feedback_date", nullable = false)
	private Date feedbackDate;

	public int getUserFeedbackId() {
		return userFeedbackId;
	}

	public void setUserFeedbackId(int userFeedbackId) {
		this.userFeedbackId = userFeedbackId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getFeeder() {
		return feeder;
	}

	public void setFeeder(User feeder) {
		this.feeder = feeder;
	}

	public Date getFeedbackDate() {
		return feedbackDate;
	}

	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
}
