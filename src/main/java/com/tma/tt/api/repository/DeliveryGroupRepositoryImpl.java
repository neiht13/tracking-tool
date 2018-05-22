package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.DeliveryGroupJpaRepository;
import com.tma.tt.api.model.DeliveryGroup;
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
public class DeliveryGroupRepositoryImpl extends ResourceRepositoryBase<DeliveryGroup, Long> implements DeliveryGroupRepository {

    @Autowired
    private DeliveryGroupJpaRepository jpaRepository;

    public DeliveryGroupRepositoryImpl() {
        super(DeliveryGroup.class);
    }

	@Override
	public ResourceList<DeliveryGroup> findAll(QuerySpec querySpec) {
		ResourceList<DeliveryGroup> list = new DefaultResourceList<DeliveryGroup>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<DeliveryGroup> deliveryGroups = jpaRepository.findAll();
        querySpec.apply(deliveryGroups, list);
        return list;
	}

    @Override
    public DeliveryGroup save(DeliveryGroup obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id) {
        DeliveryGroup obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
