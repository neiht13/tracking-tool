package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TaskCategoryJpaRepository;
import com.tma.tt.api.model.TaskCategory;
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
public class TaskCategoryRepositoryImpl extends ResourceRepositoryBase<TaskCategory, Integer> implements TaskCategoryRepository {

    @Autowired
    private TaskCategoryJpaRepository jpaRepository;

    public TaskCategoryRepositoryImpl() {
        super(TaskCategory.class);
    }

	@Override
	public ResourceList<TaskCategory> findAll(QuerySpec querySpec) {
		ResourceList<TaskCategory> list = new DefaultResourceList<TaskCategory>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<TaskCategory> taskCategories = jpaRepository.findAll();
        querySpec.apply(taskCategories, list);
        return list;
	}

    @Override
    public TaskCategory save(TaskCategory obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        TaskCategory obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
