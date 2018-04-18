package com.tma.tt.api.repository;

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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class UserMentorRepositoryImplTest {

    @InjectMocks
    private UserMentorRepositoryImpl repository;

    @Mock
    private UserMentorJpaRepository jpaRepository;

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

        User mentor = new User();
        mentor.setUserId(2);
        mentor.setUserName("hvtrung");
        mentor.setPassword("123");
        mentor.setFullName("Hoang Van Trung");
        mentor.setStatus(UserStatus.ACTIVE);


        User mentor1 = new User();
        mentor1.setUserId(3);
        mentor1.setUserName("nvluong");
        mentor1.setPassword("123");
        mentor1.setFullName("Nguyen Van Luong");
        mentor1.setStatus(UserStatus.ACTIVE);

        Subject subject = new Subject();
        subject.setSubjectId(1);
        subject.setDescription("Spring");

        Area area = new Area();
        area.setAreaId(1);
        area.setDescription("Spring Core");
        area.setSubject(subject);




        QuerySpec spec = new QuerySpec(UserMentor.class);
        List<UserMentor> userMentors = new ArrayList<>();
        UserMentor userMentor1 = new UserMentor();
        userMentor1.setUser(user);
        userMentor1.setMentor(mentor);
        userMentor1.setArea(area);
        userMentor1.setUserMentorId(2);
        userMentors.add(userMentor1);

        UserMentor userMentor2 = new UserMentor();
        userMentor2.setUser(user);
        userMentor2.setMentor(mentor1);
        userMentor2.setArea(area);
        userMentor2.setUserMentorId(3);
        userMentors.add(userMentor2);

        when(jpaRepository.findAll()).thenReturn(userMentors);

        ResourceList<UserMentor> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(userMentor1, resourceList.get(0));
        Assert.assertEquals(userMentor2, resourceList.get(1));


        /*
          Filtering base on UserMentor.userMentorId field
         */
        FilterSpec filterSpec = new FilterSpec(Arrays.asList("userMentorId"), FilterOperator.EQ, userMentor1.getUserMentorId());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(userMentor1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        User user = new User();
        user.setUserId(1);
        user.setUserName("btthuan");
        user.setPassword("123");
        user.setFullName("Bui Thanh Thuan");
        user.setStatus(UserStatus.ACTIVE);

        User mentor = new User();
        mentor.setUserId(2);
        mentor.setUserName("hvtrung");
        mentor.setPassword("123");
        mentor.setFullName("Hoang Van Trung");
        mentor.setStatus(UserStatus.ACTIVE);

        Subject subject = new Subject();
        subject.setSubjectId(1);
        subject.setDescription("Spring");

        Area area = new Area();
        area.setAreaId(1);
        area.setDescription("Spring Core");
        area.setSubject(subject);

        UserMentor userMentor1 = new UserMentor();
        userMentor1.setUser(user);
        userMentor1.setMentor(mentor);
        userMentor1.setArea(area);
        userMentor1.setUserMentorId(2);

        repository.save(userMentor1);
        ArgumentCaptor<UserMentor> argumentCaptor = ArgumentCaptor.forClass(UserMentor.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(userMentor1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        User user = new User();
        user.setUserId(1);
        user.setUserName("btthuan");
        user.setPassword("123");
        user.setFullName("Bui Thanh Thuan");
        user.setStatus(UserStatus.ACTIVE);

        User mentor = new User();
        mentor.setUserId(2);
        mentor.setUserName("hvtrung");
        mentor.setPassword("123");
        mentor.setFullName("Hoang Van Trung");
        mentor.setStatus(UserStatus.ACTIVE);

        Subject subject = new Subject();
        subject.setSubjectId(1);
        subject.setDescription("Spring");

        Area area = new Area();
        area.setAreaId(1);
        area.setDescription("Spring Core");
        area.setSubject(subject);

        UserMentor userMentor1 = new UserMentor();
        userMentor1.setUser(user);
        userMentor1.setMentor(mentor);
        userMentor1.setArea(area);
        userMentor1.setUserMentorId(2);

        when(jpaRepository.getOne(1)).thenReturn(userMentor1);
        repository.delete(1);

        ArgumentCaptor<UserMentor> argumentCaptor = ArgumentCaptor.forClass(UserMentor.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(userMentor1, argumentCaptor.getValue());
    }

}
