package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestJpaRepository;
import com.tma.tt.api.model.Test;
import com.tma.tt.api.model.TestWithQuestion;
import io.katharsis.errorhandling.exception.ResourceNotFoundException;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.list.ResourceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class TestWithQuestionRepositoryImpl extends ResourceRepositoryBase<TestWithQuestion, Long> implements TestWithQuestionRepository {

    @Autowired
    private TestJpaRepository testJpaRepository;


    public TestWithQuestionRepositoryImpl() {
        super(TestWithQuestion.class);
    }

    @Override
    public TestWithQuestion findOne(Long id, QuerySpec querySpec) {
        Test test = testJpaRepository.getOne(id);
        if (test == null) {
            throw new ResourceNotFoundException("Resource not found");
        }
        return new TestWithQuestion(test);
    }

    @Override
    public ResourceList<TestWithQuestion> findAll(QuerySpec querySpec) {
        return null;
    }

}
