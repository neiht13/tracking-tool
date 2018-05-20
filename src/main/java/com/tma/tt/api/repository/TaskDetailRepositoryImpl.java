package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TaskDetailJpaRepository;
import com.tma.tt.api.model.TaskDetail;
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
public class TaskDetailRepositoryImpl extends ResourceRepositoryBase<TaskDetail, Integer> implements TaskDetailRepository {

    @Autowired
    private TaskDetailJpaRepository jpaRepository;

    public TaskDetailRepositoryImpl() {
        super(TaskDetail.class);
    }

	@Override
	public ResourceList<TaskDetail> findAll(QuerySpec querySpec) {
		ResourceList<TaskDetail> list = new DefaultResourceList<TaskDetail>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<TaskDetail> taskDetails = jpaRepository.findAll();
        querySpec.apply(taskDetails, list);
        return list;
	}

    @Override
    public TaskDetail save(TaskDetail obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        TaskDetail obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
