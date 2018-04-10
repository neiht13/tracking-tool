package com.tma.tt.api.repository;

import com.tma.tt.api.model.Question;
import com.tma.tt.api.model.QuestionChoice;
import io.katharsis.repository.RelationshipRepositoryBase;
import org.springframework.stereotype.Component;

@Component
public class QuestionChoiceToQuestionRepositoryImpl extends RelationshipRepositoryBase<QuestionChoice, Integer, Question, Integer> {

    public QuestionChoiceToQuestionRepositoryImpl() {
        super(QuestionChoice.class, Question.class);
    }

}