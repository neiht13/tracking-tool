package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "test_id", referencedColumnName = "test_id")
    private Test test;
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", referencedColumnName = "question_id")
    private Question question;
    
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "choice_id", referencedColumnName = "choice_id")
    private QuestionChoice questionChoice;
}
