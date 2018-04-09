package com.tma.tt.api.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tma.tt.api.jpa.AreaJpaRepository;
import com.tma.tt.api.model.Area;

import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;

@Component
public class AreaRepositoryImpl extends ResourceRepositoryBase<Area, Integer> implements AreaRepository {

    @Autowired
    private AreaJpaRepository jpaRepository;

    public AreaRepositoryImpl() {
        super(Area.class);
    }

	@Override
	public ResourceList<Area> findAll(QuerySpec querySpec) {
		ResourceList<Area> list = new DefaultResourceList<Area>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Area> areas = jpaRepository.findAll();
        querySpec.apply(areas, list);
        return list;
	}
}
