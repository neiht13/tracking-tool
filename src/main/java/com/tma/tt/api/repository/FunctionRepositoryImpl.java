package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.FunctionJpaRepository;
import com.tma.tt.api.model.Function;
import com.tma.tt.api.model.FunctionEnum;
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
public class FunctionRepositoryImpl extends ResourceRepositoryBase<Function, FunctionEnum> implements FunctionRepository {

    @Autowired
    private FunctionJpaRepository jpaRepository;

    public FunctionRepositoryImpl() {
        super(Function.class);
    }

	@Override
	public ResourceList<Function> findAll(QuerySpec querySpec) {
		ResourceList<Function> list = new DefaultResourceList<Function>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Function> functions = jpaRepository.findAll();
        querySpec.apply(functions, list);
        return list;
	}

}
