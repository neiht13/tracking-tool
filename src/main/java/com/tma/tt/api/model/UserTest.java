package com.tma.tt.api.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "user-tests")
@Entity
@Table(name="user_test")
public class UserTest implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_test_id")
    private Long userTestId;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User user;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "test_id", referencedColumnName = "test_id")
    private Test test;

    @Basic
    @Column(name = "score", nullable = true, insertable = true, updatable = true)
    private int score;

    @Basic
    @Column(name = "test_date", nullable = true, insertable = true, updatable = true)
    private Date testDate;

    public Long getUserTestId() {
        return userTestId;
    }

    public void setUserTestId(Long userTestId) {
        this.userTestId = userTestId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Test getTest() {
        return test;
    }

    public void setTest(Test test) {
        this.test = test;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
}
