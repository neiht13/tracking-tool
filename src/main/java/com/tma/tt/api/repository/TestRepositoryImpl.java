package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TestJpaRepository;
import com.tma.tt.api.model.Test;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TestRepositoryImpl extends ResourceRepositoryBase<Test, Integer> implements TestRepository {

    @Autowired
    private TestJpaRepository jpaRepository;

    public TestRepositoryImpl() {
        super(Test.class);
    }

	@Override
	public ResourceList<Test> findAll(QuerySpec querySpec) {
		ResourceList<Test> list = new DefaultResourceList<Test>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Test> tests = jpaRepository.findAll();
        querySpec.apply(tests, list);
        return list;
	}
}
