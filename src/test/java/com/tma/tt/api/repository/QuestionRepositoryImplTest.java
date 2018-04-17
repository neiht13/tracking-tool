package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.QuestionJpaRepository;
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
import org.mockito.Matchers;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class QuestionRepositoryImplTest {

    @InjectMocks
    private QuestionRepositoryImpl repository;

    @Mock
    private QuestionJpaRepository jpaRepository;

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

        QuerySpec spec = new QuerySpec(Question.class);
        List<Question> questions = new ArrayList<>();
        Question question1 = new Question();
        question1.setQuestionId(1);
        question1.setDescription("Question 1");
        question1.setArea(area1);
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.FILL_IN);
        questions.add(question1);

        Question question2 = new Question();
        question2.setQuestionId(2);
        question2.setDescription("Question 2");
        question2.setArea(area2);
        question2.setStatus(QuestionStatus.ACTIVE);
        question2.setType(QuestionType.SINGLE_CHOICE);
        questions.add(question2);



        when(jpaRepository.findAll()).thenReturn(questions);

        ResourceList<Question> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(question1, resourceList.get(0));
        Assert.assertEquals(question2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("status"), FilterOperator.EQ, question1.getStatus());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(question1, resourceList.get(0));

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
        question1.setType(QuestionType.FILL_IN);

        repository.save(question1);

        ArgumentCaptor<Question> argumentCaptor = ArgumentCaptor.forClass(Question.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(question1, argumentCaptor.getValue());
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
        question1.setType(QuestionType.FILL_IN);

        when(jpaRepository.getOne(1)).thenReturn(question1);
        repository.delete(1);

        ArgumentCaptor<Question> argumentCaptor = ArgumentCaptor.forClass(Question.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(question1, argumentCaptor.getValue());
    }

}
