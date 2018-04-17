package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.QuestionChoiceJpaRepository;
import com.tma.tt.api.model.*;
import io.katharsis.queryspec.FilterOperator;
import io.katharsis.queryspec.FilterSpec;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.resource.list.ResourceList;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class QuestionChoiceRepositoryImplTest {

    @InjectMocks
    private QuestionChoiceRepositoryImpl repository;

    @Mock
    private QuestionChoiceJpaRepository jpaRepository;

    @Before
    public void setUp() {
        // initiate something
    }

    @Test
    public void testFindAll(){
        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Subject subject2 = new Subject();
        subject2.setSubjectId(2);
        subject2.setDescription("Subject 2");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        Area area2 = new Area();
        area2.setAreaId(2);
        area2.setDescription("Area 2");
        area2.setSubject(subject2);

        Question question1 = new Question();
        question1.setQuestionId(1);
        question1.setDescription("Question 1");
        question1.setArea(area1);
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);

        Question question2 = new Question();
        question2.setQuestionId(2);
        question2.setDescription("Question 2");
        question2.setArea(area2);
        question2.setStatus(QuestionStatus.INACTIVE);
        question2.setType(QuestionType.SINGLE_CHOICE);

        QuerySpec spec = new QuerySpec(QuestionChoice.class);
        List<QuestionChoice> questionChoices = new ArrayList<>();

        QuestionChoice questionChoice1 = new QuestionChoice();
        questionChoice1.setChoiceId(1);
        questionChoice1.setDescription("QuestionChoice 1");
        questionChoice1.setQuestion(question1);
        questionChoice1.setCorrected(YesNoFlag.Y);
        questionChoices.add(questionChoice1);

        QuestionChoice questionChoice2 = new QuestionChoice();
        questionChoice2.setChoiceId(2);
        questionChoice2.setDescription("QuestionChoice 2");
        questionChoice1.setQuestion(question2);
        questionChoice2.setCorrected(YesNoFlag.Y);
        questionChoices.add(questionChoice2);

        when(jpaRepository.findAll()).thenReturn(questionChoices);

        ResourceList<QuestionChoice> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(questionChoice1, resourceList.get(0));
        Assert.assertEquals(questionChoice2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("corrected"), FilterOperator.EQ, questionChoice1.getCorrected());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(questionChoice1, resourceList.get(0));

    }

    @Test
    public void testSave(){

        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        Question question1 = new Question();
        question1.setQuestionId(1);
        question1.setDescription("Question 1");
        question1.setArea(area1);
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);

        QuestionChoice questionChoice1 = new QuestionChoice();
        questionChoice1.setChoiceId(1);
        questionChoice1.setDescription("QuestionChoice 1");
        questionChoice1.setQuestion(question1);
        questionChoice1.setCorrected(YesNoFlag.Y);

        repository.save(questionChoice1);

        ArgumentCaptor<QuestionChoice> argumentCaptor = ArgumentCaptor.forClass(QuestionChoice.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(questionChoice1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        Question question1 = new Question();
        question1.setQuestionId(1);
        question1.setDescription("Question 1");
        question1.setArea(area1);
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);

        QuestionChoice questionChoice1 = new QuestionChoice();
        questionChoice1.setChoiceId(1);
        questionChoice1.setDescription("QuestionChoice 1");
        questionChoice1.setQuestion(question1);
        questionChoice1.setCorrected(YesNoFlag.Y);

        when(jpaRepository.getOne(1)).thenReturn(questionChoice1);
        repository.delete(1);

        ArgumentCaptor<QuestionChoice> argumentCaptor = ArgumentCaptor.forClass(QuestionChoice.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(questionChoice1, argumentCaptor.getValue());
    }

}
