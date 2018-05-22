package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestDetailJpaRepository;
import com.tma.tt.api.model.*;
import io.katharsis.queryspec.FilterOperator;
import io.katharsis.queryspec.FilterSpec;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.resource.list.ResourceList;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static org.mockito.Matchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class TestDetailRepositoryImplTest {

    @InjectMocks
    private TestDetailRepositoryImpl repository;

    @Mock
    private TestDetailJpaRepository jpaRepository;

    @Before
    public void setUp() {
    }

    @Test
    public void testFindAll(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1L);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1L);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1L);
        area1.setSubject(subject1);
        area1.setDescription("Spring Core");

        Question question1 = new Question();
        question1.setQuestionId(1L);
        question1.setArea(area1);
        question1.setDescription("What is DI stand for");
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);


        QuerySpec spec = new QuerySpec(TestDetail.class);
        List<TestDetail> testDetails = new ArrayList<>();
        TestDetail testDetail1 = new TestDetail();
        testDetail1.setTest(test1);
        testDetail1.setQuestion(question1);
        testDetails.add(testDetail1);

        TestDetail testDetail2 = new TestDetail();
        testDetail2.setTest(test1);
        testDetails.add(testDetail2);


        when(jpaRepository.findAll()).thenReturn(testDetails);

        ResourceList<TestDetail> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(testDetail1, resourceList.get(0));
        Assert.assertEquals(testDetail2, resourceList.get(1));


        FilterSpec filterSpec = new FilterSpec(Arrays.asList("test"), FilterOperator.EQ, testDetail1.getTest());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(testDetail1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1L);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1L);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1L);
        area1.setSubject(subject1);
        area1.setDescription("Spring Core");

        Question question1 = new Question();
        question1.setQuestionId(1L);
        question1.setArea(area1);
        question1.setDescription("What is DI stand for");
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);

        TestDetail testDetail1 = new TestDetail();
        testDetail1.setTest(test1);
        testDetail1.setQuestion(question1);

        repository.save(testDetail1);
        ArgumentCaptor<TestDetail> argumentCaptor = ArgumentCaptor.forClass(TestDetail.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(testDetail1,argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1L);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1L);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1L);
        area1.setSubject(subject1);
        area1.setDescription("Spring Core");

        Question question1 = new Question();
        question1.setQuestionId(1L);
        question1.setArea(area1);
        question1.setDescription("What is DI stand for");
        question1.setStatus(QuestionStatus.ACTIVE);
        question1.setType(QuestionType.SINGLE_CHOICE);

        TestDetail testDetail1 = new TestDetail();
        testDetail1.setTest(test1);
        testDetail1.setQuestion(question1);
        testDetail1.setId("1-1");

        when(jpaRepository.getOne(any())).thenReturn(testDetail1);
        repository.delete("1-1");
        ArgumentCaptor<TestDetail> argumentCaptor = ArgumentCaptor.forClass(TestDetail.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(testDetail1, argumentCaptor.getValue());
    }

}
