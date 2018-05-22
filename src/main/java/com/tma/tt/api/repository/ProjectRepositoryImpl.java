package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.ProjectJpaRepository;
import com.tma.tt.api.model.Project;
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
public class ProjectRepositoryImpl extends ResourceRepositoryBase<Project, Long> implements ProjectRepository {

    @Autowired
    private ProjectJpaRepository jpaRepository;

    public ProjectRepositoryImpl() {
        super(Project.class);
    }

	@Override
	public ResourceList<Project> findAll(QuerySpec querySpec) {
		ResourceList<Project> list = new DefaultResourceList<Project>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Project> projects = jpaRepository.findAll();
        querySpec.apply(projects, list);
        return list;
	}

    @Override
    public Project save(Project obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id) {
        Project obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
