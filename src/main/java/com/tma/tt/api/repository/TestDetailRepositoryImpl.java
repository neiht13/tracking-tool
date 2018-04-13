package com.tma.tt.api.repository;

import com.tma.tt.api.common.CommonJsonApiUtils;
import com.tma.tt.api.jpa.TestDetailJpaRepository;
import com.tma.tt.api.model.TestDetail;
import com.tma.tt.api.model.TestDetailId;
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
public class TestDetailRepositoryImpl extends ResourceRepositoryBase<TestDetail, String> implements TestDetailRepository {

    @Autowired
    private TestDetailJpaRepository jpaRepository;

    public TestDetailRepositoryImpl() {
        super(TestDetail.class);
    }

	@Override
	public ResourceList<TestDetail> findAll(QuerySpec querySpec) {
		ResourceList<TestDetail> list = new DefaultResourceList<TestDetail>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<TestDetail> testDetails = jpaRepository.findAll();
        querySpec.apply(testDetails, list);
        return list;
	}

    @Override
    public TestDetail save(TestDetail obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(String id){
        TestDetail obj = jpaRepository.getOne(new TestDetailId(id));
        jpaRepository.delete(obj);
    }
}
