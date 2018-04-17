package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.AreaJpaRepository;
import com.tma.tt.api.model.Area;
import com.tma.tt.api.model.Subject;
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
public class AreaRepositoryImplTest {

    @InjectMocks
    private AreaRepositoryImpl repository;

    @Mock
    private AreaJpaRepository jpaRepository;

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
        subject2.setSubjectId(1);
        subject2.setDescription("Subject 2");

        QuerySpec spec = new QuerySpec(Area.class);
        List<Area> areas = new ArrayList<>();
        Area area1 = new Area();
        area1.setAreaId(1);
        area1.setDescription("Area 1");
        area1.setSubject(subject1);
        areas.add(area1);

        Area area2 = new Area();
        area2.setAreaId(2);
        area2.setDescription("Area 1");
        area2.setSubject(subject2);
        areas.add(area2);

        when(jpaRepository.findAll()).thenReturn(areas);

        ResourceList<Area> resourceList = repository.findAll(spec);

        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(area1, resourceList.get(0));
        Assert.assertEquals(area2, resourceList.get(1));

        FilterSpec filterSpec = new FilterSpec(Arrays.asList("description"), FilterOperator.EQ, area1.getDescription());
        spec.addFilter(filterSpec);

        resourceList = repository.findAll(spec);
        Assert.assertEquals(2, resourceList.size());
        Assert.assertEquals(area1, resourceList.get(0));

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

        repository.save(area1);
        ArgumentCaptor<Area> areaArgumentCaptor = ArgumentCaptor.forClass(Area.class);
        verify(jpaRepository).save(areaArgumentCaptor.capture());
        Assert.assertEquals(area1, areaArgumentCaptor.getValue());
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

        when(jpaRepository.getOne(2)).thenReturn(area1);
        repository.delete(2);

        ArgumentCaptor<Area> areaArgumentCaptor = ArgumentCaptor.forClass(Area.class);
        verify(jpaRepository).delete(areaArgumentCaptor.capture());
        Assert.assertEquals(area1, areaArgumentCaptor.getValue());

    }

}
