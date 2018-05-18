package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserJpaRepository;
import com.tma.tt.api.jpa.UserTestJpaRepository;
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
public class UserRepositoryImplTest {

    @InjectMocks
    private UserRepositoryImpl repository;

    @Mock
    private UserJpaRepository jpaRepository;

    @Before
    public void setUp() {
    }

    @Test
    public void testFindAll(){
        QuerySpec spec = new QuerySpec(User.class);
        List<User> users = new ArrayList<>();
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        Role role2 = new Role();
        role2.setRoleId(2);
        role2.setRoleName("Mentor");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("btthuan");
        user1.setPassword("123");
        user1.setFullName("Bui Thanh Thuan");
        user1.setStatus(UserStatus.ACTIVE);
        user1.setRole(role1);
        users.add(user1);

        User user2 = new User();
        user2.setUserId(1);
        user2.setUserName("hvtrung");
        user2.setPassword("123");
        user2.setFullName("Hoang Van Trung");
        user2.setStatus(UserStatus.ACTIVE);
        user2.setRole(role2);
        users.add(user2);

        when(jpaRepository.findAll()).thenReturn(users);

        ResourceList<User> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(user1, resourceList.get(0));
        Assert.assertEquals(user2, resourceList.get(1));

        /*
          Filtering base on User.userName field
         */
        FilterSpec filterSpec = new FilterSpec(Arrays.asList("userName"), FilterOperator.EQ, user1.getUserName());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(user1, resourceList.get(0));
    }

    @Test
    public void testSave(){
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("btthuan");
        user1.setPassword("123");
        user1.setFullName("Bui Thanh Thuan");
        user1.setStatus(UserStatus.ACTIVE);
        user1.setRole(role1);

        repository.save(user1);
        ArgumentCaptor<User> argumentCaptor = ArgumentCaptor.forClass(User.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(user1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("btthuan");
        user1.setPassword("123");
        user1.setFullName("Bui Thanh Thuan");
        user1.setStatus(UserStatus.ACTIVE);
        user1.setRole(role1);

        when(jpaRepository.getOne(1)).thenReturn(user1);
        repository.delete(1);

        ArgumentCaptor<User> argumentCaptor = ArgumentCaptor.forClass(User.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(user1, argumentCaptor.getValue());
    }

}
