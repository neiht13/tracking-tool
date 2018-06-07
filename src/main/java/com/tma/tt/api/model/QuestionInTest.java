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

@JsonApiResource(type = "question-test")
public class QuestionInTest implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    private Test test;
    private Set<QuestionWithChoice> questionWithChoices;

    public QuestionInTest(Test test){
        this.test = test;

        if(test != null) {
            questionWithChoices = new LinkedHashSet<>(test.getTestDetails().size());

            for (TestDetail td : test.getTestDetails()){
                QuestionWithChoice questionWithChoice = new QuestionWithChoice();
                questionWithChoice.setId(td.getQuestion().getQuestionId());
                questionWithChoice.setDescription(td.getQuestion().getDescription());
                questionWithChoice.setType(td.getQuestion().getType());

                Set<Choice> choices = new HashSet<>();
                if (td.getQuestion().getQuestionChoices() != null ) {
                    td.getQuestion().getQuestionChoices().forEach( qc -> {
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
        return test.getTestId();
    }

    public void setId(Long id) {
        this.test.setTestId(id);
    }

    @JsonIgnore
    public Test getTest() {
        return test;
    }

    public void setTest(Test test) {
        this.test = test;
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
