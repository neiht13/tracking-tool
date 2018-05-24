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
import java.util.Set;

@JsonApiResource(type = "test-w-question")
public class TestWithQuestion implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    private UserTest userTest;
    private Set<TestQuestion> testQuestions;

    public TestWithQuestion() {
        userTest = new UserTest();
    }

    public TestWithQuestion(UserTest userTest) {
        this.userTest = userTest;
        if (userTest.getTest() != null){
            testQuestions = new LinkedHashSet<>(userTest.getTest().getTestDetails().size());
            for (TestDetail td : userTest.getTest().getTestDetails()) {
                TestQuestion testQues = new TestQuestion();
                testQues.setId(td.getQuestion().getQuestionId());
                testQues.setDescription(td.getQuestion().getDescription());
                testQues.setType(td.getQuestion().getType());

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

                testQues.setChoices(choices);
                testQuestions.add(testQues);
            }
        }
    }

    @JsonApiId
    public Long getId() {
        return userTest.getUserTestId();
    }

    public void setId(Long id) {
        this.userTest.setUserTestId(id);
    }

    @JsonIgnore
    public UserTest getUserTest() {
        return userTest;
    }

    public void setUserTest(UserTest userTest) {
        this.userTest = userTest;
    }

//    @JsonFilter("serializeAll")
    public Set<TestQuestion> getTestQuestions() {
        return testQuestions;
    }

    public void setTestQuestions(Set<TestQuestion> testQuestions) {
        this.testQuestions = testQuestions;
    }

    public static class TestQuestion {
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

//        @JsonFilter("serializeAll")
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
