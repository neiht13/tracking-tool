package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "question-choices")
@Entity
@Table(name="question_choice")
public class QuestionChoice implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="choice_id")
    private int choiceId;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "question_id", referencedColumnName = "question_id")
    private Question question;
    
    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 255)
    private String description;

    @Enumerated(EnumType.STRING)
    @Column(name = "corrected")
    private YesNoFlag corrected;

    @Basic
    @Column(name = "fill_in", nullable = true, insertable = true, updatable = true, length = 255)
    private String fill_in;

    public int getChoiceId() {
        return choiceId;
    }

    public void setChoiceId(int choiceId) {
        this.choiceId = choiceId;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public YesNoFlag getCorrected() {
        return corrected;
    }

    public void setCorrected(YesNoFlag corrected) {
        this.corrected = corrected;
    }

    public String getFill_in() {
        return fill_in;
    }

    public void setFill_in(String fill_in) {
        this.fill_in = fill_in;
    }
}
