package com.tma.tt.api.repository;

import com.tma.tt.api.model.Area;
import com.tma.tt.api.model.Question;
import io.katharsis.repository.RelationshipRepositoryBase;
import org.springframework.stereotype.Component;

@Component
public class QuestionToAreaRepositoryImpl extends RelationshipRepositoryBase<Question, Integer, Area, Integer> {

    public QuestionToAreaRepositoryImpl() {
        super(Question.class, Area.class);
    }

}