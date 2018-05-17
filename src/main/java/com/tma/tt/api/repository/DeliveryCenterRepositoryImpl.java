package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.DeliveryCenterJpaRepository;
import com.tma.tt.api.model.DeliveryCenter;
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
public class DeliveryCenterRepositoryImpl extends ResourceRepositoryBase<DeliveryCenter, Integer> implements DeliveryCenterRepository {

    @Autowired
    private DeliveryCenterJpaRepository jpaRepository;

    public DeliveryCenterRepositoryImpl() {
        super(DeliveryCenter.class);
    }

	@Override
	public ResourceList<DeliveryCenter> findAll(QuerySpec querySpec) {
		ResourceList<DeliveryCenter> list = new DefaultResourceList<DeliveryCenter>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<DeliveryCenter> deliveryCenters = jpaRepository.findAll();
        querySpec.apply(deliveryCenters, list);
        return list;
	}

    @Override
    public DeliveryCenter save(DeliveryCenter obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        DeliveryCenter obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
