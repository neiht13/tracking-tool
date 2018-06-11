package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.AreaJpaRepository;
import com.tma.tt.api.jpa.QuestionJpaRepository;
import com.tma.tt.api.model.Question;
import com.tma.tt.api.model.QuestionAndChoice;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class QuestionAndChoiceRepositoryImpl extends ResourceRepositoryBase<QuestionAndChoice, Long> implements QuestionAndChoiceRepository {

    @Autowired
    private QuestionJpaRepository questionJpaRepository;

    @Autowired
    private AreaJpaRepository areaJpaRepository;

    public QuestionAndChoiceRepositoryImpl() {
        super(QuestionAndChoice.class);
    }

    @Override
    public ResourceList<QuestionAndChoice> findAll(QuerySpec querySpec) {
        ResourceList<QuestionAndChoice> list = new DefaultResourceList<QuestionAndChoice>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Question> questions = questionJpaRepository.findAll();

        List<QuestionAndChoice> questionAndChoices = new ArrayList<>();

        for(Question q: questions){
            QuestionAndChoice questionAndChoice = new QuestionAndChoice();
            questionAndChoice.setId(q.getQuestionId());
            questionAndChoice.setDescription(q.getDescription());
            questionAndChoice.setType(q.getType());

            List<QuestionAndChoice.Choice> choices = new ArrayList<>();
            if (q.getQuestionChoices() != null ) {
                q.getQuestionChoices().forEach( qc -> {
                    QuestionAndChoice.Choice choice = new QuestionAndChoice.Choice();
                    choice.setId(qc.getChoiceId());
                    choice.setDescription(qc.getDescription());
                    choice.setSelected("");
                    choices.add(choice);
                });
            }

            questionAndChoice.setChoices(choices);
            questionAndChoice.setAreaId(q.getArea().getAreaId());

            questionAndChoices.add(questionAndChoice);
        }


        querySpec.apply(questionAndChoices, list);
        return list;
    }

}
