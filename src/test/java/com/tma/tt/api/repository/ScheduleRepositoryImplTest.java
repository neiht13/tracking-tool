package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.ScheduleJpaRepository;
import com.tma.tt.api.model.Schedule;
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
public class ScheduleRepositoryImplTest {

    @InjectMocks
    private ScheduleRepositoryImpl repository;

    @Mock
    private ScheduleJpaRepository jpaRepository;

    @Before
    public void setUp() {
        // initiate something
    }

    @Test
    public void testFindAll(){

        QuerySpec spec = new QuerySpec(Schedule.class);
        List<Schedule> schedules = new ArrayList<>();
        Schedule schedule1 = new Schedule();
        schedule1.setScheduleId(1L);
        schedule1.setWeekId("Week-1-2018");
        schedules.add(schedule1);

        Schedule schedule2 = new Schedule();
        schedule2.setScheduleId(2L);
        schedule2.setWeekId("Week-2-2018");
        schedules.add(schedule2);

        when(jpaRepository.findAll()).thenReturn(schedules);

        ResourceList<Schedule> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(schedule1, resourceList.get(0));
        Assert.assertEquals(schedule2, resourceList.get(1));


        FilterSpec filterSpec = new FilterSpec(Arrays.asList("weekId"), FilterOperator.EQ, schedule1.getWeekId());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(1, resourceList.size());
        Assert.assertEquals(schedule1, resourceList.get(0));

    }

    @Test
    public void testSave(){
        Schedule schedule1 = new Schedule();
        schedule1.setScheduleId(1L);
        schedule1.setWeekId("Week-1-2018");

        repository.save(schedule1);
        ArgumentCaptor<Schedule> areaArgumentCaptor = ArgumentCaptor.forClass(Schedule.class);
        verify(jpaRepository).save(areaArgumentCaptor.capture());
        Assert.assertEquals(schedule1, areaArgumentCaptor.getValue());
    }

    @Test
    public void testDelete(){
        Schedule schedule1 = new Schedule();
        schedule1.setScheduleId(1L);
        schedule1.setWeekId("Week-1-2018");

        when(jpaRepository.getOne(1L)).thenReturn(schedule1);
        repository.delete(1L);

        ArgumentCaptor<Schedule> areaArgumentCaptor = ArgumentCaptor.forClass(Schedule.class);
        verify(jpaRepository).delete(areaArgumentCaptor.capture());
        Assert.assertEquals(schedule1, areaArgumentCaptor.getValue());

    }

}
