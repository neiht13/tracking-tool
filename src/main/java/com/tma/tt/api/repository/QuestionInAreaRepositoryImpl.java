package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.*;
import com.tma.tt.api.model.*;
import io.katharsis.errorhandling.exception.ResourceNotFoundException;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.list.ResourceList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class QuestionInAreaRepositoryImpl extends ResourceRepositoryBase<QuestionInArea, Long> implements QuestionInAreaRepository {

    @Autowired
    private QuestionJpaRepository questionJpaRepository;

    @Autowired
    private AreaJpaRepository areaJpaRepository;

    public QuestionInAreaRepositoryImpl() {
        super(QuestionInArea.class);
    }

    @Override
    public QuestionInArea findOne(Long id, QuerySpec querySpec) {
        List<Question> questions = questionJpaRepository.findAll();
        Area area = areaJpaRepository.getOne(id);

        if (area == null) {
            throw new ResourceNotFoundException("Resource not found");
        }
        return new QuestionInArea(questions, area);
    }

    @Override
    public ResourceList<QuestionInArea> findAll(QuerySpec querySpec) {
        return null;
    }

}
