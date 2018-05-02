package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@JsonApiResource(type = "user-test-results")
@Entity
@Table(name="user_test_result")
public class UserTestResult implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="user_test_result_id")
    private int userTestResultId;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_test_id", referencedColumnName = "user_test_id")
    private UserTest userTest;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", referencedColumnName = "question_id")
    private Question question;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "choice_id", referencedColumnName = "choice_id")
    private QuestionChoice questionChoice;

    @Basic
    @Column(name = "fill_in", nullable = true, insertable = true, updatable = true, length = 255)
    private String fill_in;

    @Enumerated(EnumType.STRING)
    @Column(name = "corrected")
    private YesNoFlag corrected;

    public int getUserTestResultId() {
        return userTestResultId;
    }

    public void setUserTestResultId(int userTestResultId) {
        this.userTestResultId = userTestResultId;
    }

    public UserTest getUserTest() {
        return userTest;
    }

    public void setUserTest(UserTest userTest) {
        this.userTest = userTest;
    }

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

    public String getFill_in() {
        return fill_in;
    }

    public void setFill_in(String fill_in) {
        this.fill_in = fill_in;
    }

    public YesNoFlag getCorrected() {
        return corrected;
    }

    public void setCorrected(YesNoFlag corrected) {
        this.corrected = corrected;
    }
}
