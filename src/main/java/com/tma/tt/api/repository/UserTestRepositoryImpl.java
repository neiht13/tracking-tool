package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserTestJpaRepository;
import com.tma.tt.api.model.UserTest;
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
public class UserTestRepositoryImpl extends ResourceRepositoryBase<UserTest, Integer> implements UserTestRepository {

    @Autowired
    private UserTestJpaRepository jpaRepository;

    public UserTestRepositoryImpl() {
        super(UserTest.class);
    }

	@Override
	public ResourceList<UserTest> findAll(QuerySpec querySpec) {
		ResourceList<UserTest> list = new DefaultResourceList<UserTest>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<UserTest> userTests = jpaRepository.findAll();
        querySpec.apply(userTests, list);
        return list;
	}

    @Override
    public UserTest save(UserTest obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id){
        UserTest obj = jpaRepository.getOne(id);
        jpaRepository.delete(obj);
    }
}
