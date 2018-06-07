package com.tma.tt.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.io.Serializable;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@JsonApiResource(type = "question-area")
public class QuestionInArea implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    private Area area;
    private List<Question> questions;
    private Set<QuestionWithChoice> questionWithChoices;

    public QuestionInArea(List<Question> questions, Area area){
        this.questions = questions;
        this.area = area;

        questionWithChoices = new LinkedHashSet<>(questions.size());

        for(Question q: questions){
            if(q.getArea().getAreaId().equals(area.getAreaId())){
                QuestionWithChoice questionWithChoice = new QuestionWithChoice();
                questionWithChoice.setId(q.getQuestionId());
                questionWithChoice.setDescription(q.getDescription());
                questionWithChoice.setType(q.getType());

                Set<Choice> choices = new HashSet<>();
                if (q.getQuestionChoices() != null ) {
                    q.getQuestionChoices().forEach( qc -> {
                        Choice choice = new Choice();
                        choice.setId(qc.getChoiceId());
                        choice.setDescription(qc.getDescription());
                        choice.setSelected("");
                        choices.add(choice);
                    });
                }

                questionWithChoice.setChoices(choices);
                questionWithChoices.add(questionWithChoice);
            }
        }
    }

    @JsonApiId
    public Long getId() {
        return area.getAreaId();
    }

    public void setId(Long id) {
        this.area.setAreaId(id);
    }

    @JsonIgnore
    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    @JsonIgnore
    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

    public Set<QuestionWithChoice> getQuestionWithChoices() {
        return questionWithChoices;
    }

    public void setQuestionWithChoices(Set<QuestionWithChoice> questionWithChoices) {
        this.questionWithChoices = questionWithChoices;
    }

    public static class QuestionWithChoice {
        private Long id;

        @Enumerated(EnumType.STRING)
        private QuestionType type;

        private String description;
        private Set<Choice> choices;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public Set<Choice> getChoices() {
            return choices;
        }

        public void setChoices(Set<Choice> choices) {
            this.choices = choices;
        }

        public QuestionType getType() {
            return type;
        }

        public void setType(QuestionType type) {
            this.type = type;
        }
    }

    public static class Choice {
        private Long id;
        private String description;
        private String selected;

        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getDescription() {
            return description;
        }

        public void setDescription(String description) {
            this.description = description;
        }

        public String getSelected() {
            return selected;
        }

        public void setSelected(String selected) {
            this.selected = selected;
        }

    }
}
