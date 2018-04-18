package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserFeedbackJpaRepository;
import com.tma.tt.api.jpa.UserMentorJpaRepository;
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

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class UserFeedbackRepositoryImplTest {

    @InjectMocks
    private UserFeedbackRepositoryImpl repository;

    @Mock
    private UserFeedbackJpaRepository jpaRepository;

    @Before
    public void setUp() {
    }

    @Test
    public void testFindAll(){
        User user = new User();
        user.setUserId(1);
        user.setUserName("btthuan");
        user.setPassword("123");
        user.setFullName("Bui Thanh Thuan");
        user.setStatus(UserStatus.ACTIVE);

        User feeder = new User();
        feeder.setUserId(2);
        feeder.setUserName("hvtrung");
        feeder.setPassword("123");
        feeder.setFullName("Hoang Van Trung");
        feeder.setStatus(UserStatus.ACTIVE);


        User feeder1 = new User();
        feeder1.setUserId(3);
        feeder1.setUserName("nvluong");
        feeder1.setPassword("123");
        feeder1.setFullName("Nguyen Van Luong");
        feeder1.setStatus(UserStatus.ACTIVE);

        QuerySpec spec = new QuerySpec(UserFeedback.class);
        List<UserFeedback> userFeedbacks = new ArrayList<>();
        UserFeedback userFeedback1 = new UserFeedback();
        userFeedback1.setUserFeedbackId(1);
        userFeedback1.setUser(user);
        userFeedback1.setDescription("Feedback for Spring test");
        userFeedback1.setFeedbackDate(new Date(2018,04,18));
        userFeedback1.setFeeder(feeder);
        userFeedbacks.add(userFeedback1);

        UserFeedback userFeedback2 = new UserFeedback();
        userFeedback1.setUserFeedbackId(2);
        userFeedback1.setUser(user);
        userFeedback1.setDescription("Feedback for Java test");
        userFeedback1.setFeedbackDate(new Date(2018,04,20));
        userFeedback1.setFeeder(feeder1);
        userFeedbacks.add(userFeedback2);

        when(jpaRepository.findAll()).thenReturn(userFeedbacks);

        ResourceList<UserFeedback> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(userFeedback1, resourceList.get(0));
        Assert.assertEquals(userFeedback2, resourceList.get(1));


        /*
          Filtering base on UserFeedback.description field
         */
        FilterSpec filterSpec = new FilterSpec(Arrays.asList("description"), FilterOperator.EQ, userFeedback1.getDescription());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(userFeedback1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        User user = new User();
        user.setUserId(1);
        user.setUserName("btthuan");
        user.setPassword("123");
        user.setFullName("Bui Thanh Thuan");
        user.setStatus(UserStatus.ACTIVE);

        User feeder = new User();
        feeder.setUserId(2);
        feeder.setUserName("hvtrung");
        feeder.setPassword("123");
        feeder.setFullName("Hoang Van Trung");
        feeder.setStatus(UserStatus.ACTIVE);


        UserFeedback userFeedback1 = new UserFeedback();
        userFeedback1.setUserFeedbackId(1);
        userFeedback1.setUser(user);
        userFeedback1.setDescription("Feedback for Spring test");
        userFeedback1.setFeedbackDate(new Date(2018,04,18));
        userFeedback1.setFeeder(feeder);

        repository.save(userFeedback1);
        ArgumentCaptor<UserFeedback> argumentCaptor = ArgumentCaptor.forClass(UserFeedback.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(userFeedback1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        User user = new User();
        user.setUserId(1);
        user.setUserName("btthuan");
        user.setPassword("123");
        user.setFullName("Bui Thanh Thuan");
        user.setStatus(UserStatus.ACTIVE);

        User feeder = new User();
        feeder.setUserId(2);
        feeder.setUserName("hvtrung");
        feeder.setPassword("123");
        feeder.setFullName("Hoang Van Trung");
        feeder.setStatus(UserStatus.ACTIVE);


        UserFeedback userFeedback1 = new UserFeedback();
        userFeedback1.setUserFeedbackId(1);
        userFeedback1.setUser(user);
        userFeedback1.setDescription("Feedback for Spring test");
        userFeedback1.setFeedbackDate(new Date(2018,04,18));
        userFeedback1.setFeeder(feeder);

        when(jpaRepository.getOne(1)).thenReturn(userFeedback1);
        repository.delete(1);

        ArgumentCaptor<UserFeedback> argumentCaptor = ArgumentCaptor.forClass(UserFeedback.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(userFeedback1, argumentCaptor.getValue());
    }

}
