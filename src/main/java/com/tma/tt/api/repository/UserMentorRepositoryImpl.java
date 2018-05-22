package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserJpaRepository;
import com.tma.tt.api.jpa.UserMentorJpaRepository;
import com.tma.tt.api.model.User;
import com.tma.tt.api.model.UserMentor;
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
public class UserMentorRepositoryImpl extends ResourceRepositoryBase<UserMentor, Long> implements UserMentorRepository {

    @Autowired
    private UserMentorJpaRepository jpaRepository;

    public UserMentorRepositoryImpl() {
        super(UserMentor.class);
    }

	@Override
	public ResourceList<UserMentor> findAll(QuerySpec querySpec) {
		ResourceList<UserMentor> list = new DefaultResourceList<UserMentor>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<UserMentor> userMentors = jpaRepository.findAll();
        querySpec.apply(userMentors, list);
        return list;
	}

    @Override
    public UserMentor save(UserMentor obj){
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id){
        UserMentor obj = jpaRepository.getOne(id);
        jpaRepository.delete(obj);
    }
}
