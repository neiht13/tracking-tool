package com.tma.tt.api.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tma.tt.api.jpa.SubjectJpaRepository;
import com.tma.tt.api.model.Subject;

import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;

@Component
public class SubjectRepositoryImpl extends ResourceRepositoryBase<Subject, Integer> implements SubjectRepository {

    @Autowired
    private SubjectJpaRepository jpaRepository;

    public SubjectRepositoryImpl() {
        super(Subject.class);
    }

	@Override
	public ResourceList<Subject> findAll(QuerySpec querySpec) {
		ResourceList<Subject> list = new DefaultResourceList<Subject>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Subject> subjects = jpaRepository.findAll();
        querySpec.apply(subjects, list);
        return list;
	}

    @Override
    public Subject save(Subject obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        Subject obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
