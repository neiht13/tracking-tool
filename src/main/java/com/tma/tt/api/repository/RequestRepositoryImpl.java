package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.RequestJpaRepository;
import com.tma.tt.api.model.Request;
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
public class RequestRepositoryImpl extends ResourceRepositoryBase<Request, Integer> implements RequestRepository {

    @Autowired
    private RequestJpaRepository jpaRepository;

    public RequestRepositoryImpl() {
        super(Request.class);
    }

	@Override
	public ResourceList<Request> findAll(QuerySpec querySpec) {
		ResourceList<Request> list = new DefaultResourceList<Request>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Request> requests = jpaRepository.findAll();
        querySpec.apply(requests, list);
        return list;
	}

    @Override
    public Request save(Request obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        Request obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
