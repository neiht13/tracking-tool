package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserTestJpaRepository;
import com.tma.tt.api.model.User;
import com.tma.tt.api.model.UserTest;
import com.tma.tt.api.model.YesNoFlag;
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
public class UserTestRepositoryImplTest {

    @InjectMocks
    private UserTestRepositoryImpl repository;

    @Mock
    private UserTestJpaRepository jpaRepository;

    @Before
    public void setUp() {
    }

    @Test
    public void testFindAll(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nvluong 1");


        QuerySpec spec = new QuerySpec(UserTest.class);
        List<UserTest> userTests = new ArrayList<>();
        UserTest userTest1 = new UserTest();
        userTest1.setTest(test1);
        userTest1.setUser(user1);
        userTests.add(userTest1);

        UserTest userTest2 = new UserTest();
        userTest2.setUserTestId(2);
        userTests.add(userTest2);


        when(jpaRepository.findAll()).thenReturn(userTests);

        ResourceList<UserTest> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(userTest1, resourceList.get(0));
        Assert.assertEquals(userTest2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("user"), FilterOperator.EQ, userTest1.getUser());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(userTest1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nvluong 1");

        UserTest userTest1 = new UserTest();
        userTest1.setTest(test1);
        userTest1.setUser(user1);

        repository.save(userTest1);
        ArgumentCaptor<UserTest> argumentCaptor = ArgumentCaptor.forClass(UserTest.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(userTest1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        com.tma.tt.api.model.Test test1 = new com.tma.tt.api.model.Test();
        test1.setTestId(1);
        test1.setDescription("Test 1");
        test1.setCreateDate(new Date(2018,04,1));
        test1.setLevel(2);

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nvluong 1");

        UserTest userTest1 = new UserTest();
        userTest1.setTest(test1);
        userTest1.setUser(user1);

        when(jpaRepository.getOne(1)).thenReturn(userTest1);
        repository.delete(1);

        ArgumentCaptor<UserTest> argumentCaptor = ArgumentCaptor.forClass(UserTest.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(userTest1, argumentCaptor.getValue());
    }

}
