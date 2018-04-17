package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestJpaRepository;
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
import java.util.Date;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class TestRepositoryImplTest {

    @InjectMocks
    private TestRepositoryImpl repository;

    @Mock
    private TestJpaRepository jpaRepository;

    @Before
    public void setUp() {
        // initiate something
    }

    @Test
    public void testFindAll(){
        QuerySpec spec = new QuerySpec(com.tma.tt.api.model.Test.class);
        List<com.tma.tt.api.model.Test> tests = new ArrayList<>();
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);
        tests.add(test1);

        com.tma.tt.api.model.Test test2 = new com.tma.tt.api.model.Test();
        test2.setTestId(2);
        test2.setDescription("Test 2");
        test2.setCreateDate(new Date(2018,04,1));
        test2.setLevel(2);
        tests.add(test2);

        when(jpaRepository.findAll()).thenReturn(tests);

        ResourceList<com.tma.tt.api.model.Test> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(test1, resourceList.get(0));
        Assert.assertEquals(test2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("createDate"), FilterOperator.EQ, test2.getCreateDate());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(test1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        repository.save(test1);
        ArgumentCaptor<com.tma.tt.api.model.Test> argumentCaptor = ArgumentCaptor.forClass(com.tma.tt.api.model.Test.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(test1,argumentCaptor.getValue());
    }

    @Test
    public void testDelete() {
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        when(jpaRepository.getOne(1)).thenReturn(test1);
        repository.delete(1);

        ArgumentCaptor<com.tma.tt.api.model.Test> argumentCaptor = ArgumentCaptor.forClass(com.tma.tt.api.model.Test.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(test1,argumentCaptor.getValue());
    }

}
