package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TaskAssignmentJpaRepository;
import com.tma.tt.api.model.TaskAssignment;
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
public class TaskAssignmentRepositoryImpl extends ResourceRepositoryBase<TaskAssignment, Integer> implements TaskAssignmentRepository {

    @Autowired
    private TaskAssignmentJpaRepository jpaRepository;

    public TaskAssignmentRepositoryImpl() {
        super(TaskAssignment.class);
    }

	@Override
	public ResourceList<TaskAssignment> findAll(QuerySpec querySpec) {
		ResourceList<TaskAssignment> list = new DefaultResourceList<TaskAssignment>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<TaskAssignment> taskAssignments = jpaRepository.findAll();
        querySpec.apply(taskAssignments, list);
        return list;
	}

    @Override
    public TaskAssignment save(TaskAssignment obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        TaskAssignment obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
