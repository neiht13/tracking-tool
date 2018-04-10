package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.QuestionChoiceJpaRepository;
import com.tma.tt.api.model.QuestionChoice;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class QuestionChoiceRepositoryImpl extends ResourceRepositoryBase<QuestionChoice, Integer> implements QuestionChoiceRepository {

    @Autowired
    private QuestionChoiceJpaRepository jpaRepository;

    public QuestionChoiceRepositoryImpl() {
        super(QuestionChoice.class);
    }

    @Override
    public ResourceList<QuestionChoice> findAll(QuerySpec querySpec) {
        ResourceList<QuestionChoice> list = new DefaultResourceList<QuestionChoice>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<QuestionChoice> questionChoices = jpaRepository.findAll();
        querySpec.apply(questionChoices, list);
        return list;
    }
}
