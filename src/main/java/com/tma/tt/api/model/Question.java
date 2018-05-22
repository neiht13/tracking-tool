package com.tma.tt.api.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "questions")
@Entity
@Table(name="question")
public class Question implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="question_id")
    private Long questionId;

	@JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "area_id", referencedColumnName = "area_id")
    private Area area;

	@JsonApiRelation
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "question_id", referencedColumnName = "question_id")
	@OrderBy("choiceId")
	private List<QuestionChoice> questionChoices;

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 255)
    private String description;
    
    @Enumerated(EnumType.STRING)
	@Column(name = "status")
	private QuestionStatus status;
    
    @Enumerated(EnumType.STRING)
	@Column(name = "question_type")
	private QuestionType type;

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public QuestionStatus getStatus() {
		return status;
	}

	public void setStatus(QuestionStatus status) {
		this.status = status;
	}

	public QuestionType getType() {
		return type;
	}

	public void setType(QuestionType type) {
		this.type = type;
	}

	public List<QuestionChoice> getQuestionChoices() {
		return questionChoices;
	}

	public void setQuestionChoices(List<QuestionChoice> questionChoices) {
		this.questionChoices = questionChoices;
	}
}
