package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserTestResultJpaRepository;
import com.tma.tt.api.model.UserTestResult;
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
public class UserTestResultRepositoryImpl extends ResourceRepositoryBase<UserTestResult, Long> implements UserTestResultRepository {

    @Autowired
    private UserTestResultJpaRepository jpaRepository;

    public UserTestResultRepositoryImpl() {
        super(UserTestResult.class);
    }

	@Override
	public ResourceList<UserTestResult> findAll(QuerySpec querySpec) {
		ResourceList<UserTestResult> list = new DefaultResourceList<UserTestResult>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<UserTestResult> userTests = jpaRepository.findAll();
        querySpec.apply(userTests, list);
        return list;
	}

    @Override
    public UserTestResult save(UserTestResult obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id){
        UserTestResult obj = jpaRepository.getOne(id);
        jpaRepository.delete(obj);
    }
}
