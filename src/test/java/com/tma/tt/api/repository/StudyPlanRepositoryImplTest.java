package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.StudyPlanJpaRepository;
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
public class StudyPlanRepositoryImplTest {

    @InjectMocks
    private StudyPlanRepositoryImpl repository;

    @Mock
    private StudyPlanJpaRepository jpaRepository;

    @Before
    public void setUp() {
        // initiate something
    }

    @Test
    public void testFindAll() {
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        Role role2 = new Role();
        role2.setRoleId(2);
        role2.setRoleName("Mentor");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nva");
        user1.setPassword("abc");
        user1.setFullName("Nguyen Van A");
        user1.setRole(role1);
        user1.setStatus(UserStatus.ACTIVE);

        User user2 = new User();
        user2.setUserId(2);
        user2.setUserName("nvb");
        user2.setPassword("abc");
        user2.setFullName("Nguyen Van B");
        user2.setRole(role2);
        user2.setStatus(UserStatus.INACTIVE);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Subject subject2 = new Subject();
        subject2.setSubjectId(1);
        subject2.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        Area area2 = new Area();
        area2.setAreaId(1);
        area2.setDescription("Area 1");
        area2.setSubject(subject2);

        QuerySpec spec = new QuerySpec(StudyPlan.class);
        List<StudyPlan> studyPlans = new ArrayList<>();

        StudyPlan studyPlan1 = new StudyPlan();
        studyPlan1.setStudyPlanId(1);
        studyPlan1.setUser(user1);
        studyPlan1.setArea(area1);
        studyPlans.add(studyPlan1);

        StudyPlan studyPlan2 = new StudyPlan();
        studyPlan2.setStudyPlanId(2);
        studyPlan2.setUser(user2);
        studyPlan2.setArea(area2);
        studyPlans.add(studyPlan2);

        when(jpaRepository.findAll()).thenReturn(studyPlans);

        ResourceList<StudyPlan> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(studyPlan1, resourceList.get(0));
        Assert.assertEquals(studyPlan2, resourceList.get(1));
    }

    @Test
    public void testSave(){
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nva");
        user1.setPassword("abc");
        user1.setFullName("Nguyen Van A");
        user1.setRole(role1);
        user1.setStatus(UserStatus.ACTIVE);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        StudyPlan studyPlan1 = new StudyPlan();
        studyPlan1.setStudyPlanId(1);
        studyPlan1.setUser(user1);
        studyPlan1.setArea(area1);

        repository.save(studyPlan1);

        ArgumentCaptor<StudyPlan> argumentCaptor = ArgumentCaptor.forClass(StudyPlan.class);
        verify(jpaRepository).save(argumentCaptor.capture());
        Assert.assertEquals(studyPlan1, argumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        Role role1 = new Role();
        role1.setRoleId(1);
        role1.setRoleName("User");

        User user1 = new User();
        user1.setUserId(1);
        user1.setUserName("nva");
        user1.setPassword("abc");
        user1.setFullName("Nguyen Van A");
        user1.setRole(role1);
        user1.setStatus(UserStatus.ACTIVE);

        Subject subject1 = new Subject();
        subject1.setSubjectId(1);
        subject1.setDescription("Subject 1");

        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);

        StudyPlan studyPlan1 = new StudyPlan();
        studyPlan1.setStudyPlanId(1);
        studyPlan1.setUser(user1);
        studyPlan1.setArea(area1);

        when(jpaRepository.getOne(2)).thenReturn(studyPlan1);
        repository.delete(2);

        ArgumentCaptor<StudyPlan> argumentCaptor = ArgumentCaptor.forClass(StudyPlan.class);
        verify(jpaRepository).delete(argumentCaptor.capture());
        Assert.assertEquals(studyPlan1,argumentCaptor.getValue());
    }

}
