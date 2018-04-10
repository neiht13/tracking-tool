package com.tma.tt.api.repository;

import com.tma.tt.api.model.TestDetail;
import com.tma.tt.api.model.Question;
import io.katharsis.repository.RelationshipRepositoryBase;
import org.springframework.stereotype.Component;

@Component
public class TestDetailToQuestionRepositoryImpl extends RelationshipRepositoryBase<TestDetail, Integer, Question, Integer> {

    public TestDetailToQuestionRepositoryImpl() {
        super(TestDetail.class, Question.class);
    }

}
