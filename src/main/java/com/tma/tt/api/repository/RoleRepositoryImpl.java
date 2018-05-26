package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.RoleJpaRepository;
import com.tma.tt.api.model.Role;
import com.tma.tt.api.model.RoleEnum;
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
public class RoleRepositoryImpl extends ResourceRepositoryBase<Role, RoleEnum> implements RoleRepository {

    @Autowired
    private RoleJpaRepository jpaRepository;

    public RoleRepositoryImpl() {
        super(Role.class);
    }

	@Override
	public ResourceList<Role> findAll(QuerySpec querySpec) {
		ResourceList<Role> list = new DefaultResourceList<Role>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Role> roles = jpaRepository.findAll();
        querySpec.apply(roles, list);
        return list;
	}

}
