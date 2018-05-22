package com.tma.tt.api.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tma.tt.api.jpa.UserJpaRepository;
import com.tma.tt.api.model.User;

import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;

import java.util.List;

@Component
public class UserRepositoryImpl extends ResourceRepositoryBase<User, Long> implements UserRepository {

    @Autowired
    private UserJpaRepository jpaRepository;

    public UserRepositoryImpl() {
        super(User.class);
    }

	@Override
	public ResourceList<User> findAll(QuerySpec querySpec) {
		ResourceList<User> list = new DefaultResourceList<User>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<User> users = jpaRepository.findAll();
        querySpec.apply(users, list);
        return list;
	}

    @Override
    public User save(User obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id){
        User obj = jpaRepository.getOne(id);
        jpaRepository.delete(obj);
    }
}
