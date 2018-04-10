package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;
import io.katharsis.resource.annotations.JsonApiToOne;

@JsonApiResource(type = "test-details")
@Entity
@Table(name="test_detail")
public class TestDetail implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;
    
    @EmbeddedId
    @JsonIgnore
    private TestDetailId testDetailId;
    
    @JsonApiId
    @Transient
    private String id;
    
    @JsonProperty("test")
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "test_id", referencedColumnName = "test_id", insertable = false, updatable = false)
    @MapsId("testId")
    private Test test;
    
    @JsonProperty("question")
    @JsonApiToOne
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", referencedColumnName = "question_id", insertable = false, updatable = false)
    @MapsId("questionId")
    private Question question;

	public TestDetailId getTestDetailId() {
		return testDetailId;
	}

	public void setTestDetailId(TestDetailId testDetailId) {
		this.testDetailId = testDetailId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.testDetailId = new TestDetailId(id);
		this.id = id;
	}

	public Test getTest() {
		return test;
	}

	public void setTest(Test test) {
		this.test = test;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}
    
}
