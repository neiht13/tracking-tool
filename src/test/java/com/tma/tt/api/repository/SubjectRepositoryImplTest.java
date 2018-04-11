package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.SubjectJpaRepository;
import com.tma.tt.api.model.Subject;
import io.katharsis.queryspec.FilterOperator;
import io.katharsis.queryspec.FilterSpec;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.resource.list.ResourceList;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@RunWith(MockitoJUnitRunner.class)
public class SubjectRepositoryImplTest {

    @InjectMocks
    private SubjectRepositoryImpl repository;

    @Mock
    private SubjectJpaRepository jpaRepository;

    @Before
    public void setUp() {
        // initiate something
    }

    @Test
    public void testFindAll(){
        QuerySpec spec = new QuerySpec(Subject.class);
        List<Subject> subjects = new ArrayList<>();
        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");
        subjects.add(subject1);

        Subject subject2 = new Subject();
        subject2.setSubjectId(2);
        subject2.setDescription("Subject 2");
        subjects.add(subject2);

        when(jpaRepository.findAll()).thenReturn(subjects);

        ResourceList<Subject> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(subject1, resourceList.get(0));
        Assert.assertEquals(subject2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("description"), FilterOperator.EQ, subject1.getDescription());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(subject1, resourceList.get(0));

    }

}
