package com.tma.tt.api.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;
import io.katharsis.resource.annotations.JsonApiToOne;

@JsonApiResource(type = "user-tests")
@Entity
@Table(name="user_test")
public class UserTest implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_test_id")
    private int userTestId;
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User user;
    
//    @JsonApiToOne
//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "test_id", referencedColumnName = "test_id")
//    private Test test;
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", referencedColumnName = "question_id")
    private Question question;
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "choice_id", referencedColumnName = "choice_id")
    private QuestionChoice questionChoice;

    @Enumerated(EnumType.STRING)
    @Column(name = "corrected")
    private YesNoFlag corrected;

    @Basic
    @Column(name = "test_date", nullable = false)
    private Date testDate;

    public int getUserTestId() {
        return userTestId;
    }

    public void setUserTestId(int userTestId) {
        this.userTestId = userTestId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

//    public Test getTest() {
//        return test;
//    }
//
//    public void setTest(Test test) {
//        this.test = test;
//    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public QuestionChoice getQuestionChoice() {
        return questionChoice;
    }

    public void setQuestionChoice(QuestionChoice questionChoice) {
        this.questionChoice = questionChoice;
    }

    public YesNoFlag getCorrected() {
        return corrected;
    }

    public void setCorrected(YesNoFlag corrected) {
        this.corrected = corrected;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
}
