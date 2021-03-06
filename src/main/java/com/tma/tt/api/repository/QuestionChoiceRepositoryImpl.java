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
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class QuestionChoiceRepositoryImpl extends ResourceRepositoryBase<QuestionChoice, Long> implements QuestionChoiceRepository {

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

    @Override
    public QuestionChoice save(QuestionChoice obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id){
        QuestionChoice obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);    }
}
