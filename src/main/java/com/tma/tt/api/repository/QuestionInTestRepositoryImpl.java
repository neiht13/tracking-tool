package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestJpaRepository;
import com.tma.tt.api.model.QuestionInTest;
import com.tma.tt.api.model.Test;
import io.katharsis.errorhandling.exception.ResourceNotFoundException;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.list.ResourceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class QuestionInTestRepositoryImpl extends ResourceRepositoryBase<QuestionInTest, Long> implements QuestionInTestRepository {

    @Autowired
    private TestJpaRepository testJpaRepository;

    public QuestionInTestRepositoryImpl() {
        super(QuestionInTest.class);
    }

    @Override
    public QuestionInTest findOne(Long id, QuerySpec querySpec) {
        Test test = testJpaRepository.getOne(id);

        if (test == null) {
            throw new ResourceNotFoundException("Resource not found");
        }
        return new QuestionInTest(test);
    }

    @Override
    public ResourceList<QuestionInTest> findAll(QuerySpec querySpec) {
        return null;
    }

}
