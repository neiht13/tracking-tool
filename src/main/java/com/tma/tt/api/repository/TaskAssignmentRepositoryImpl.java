package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.TaskAssignmentJpaRepository;
import com.tma.tt.api.jpa.TaskDetailJpaRepository;
import com.tma.tt.api.model.TaskAssignment;
import com.tma.tt.api.model.TaskDetail;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TaskAssignmentRepositoryImpl extends ResourceRepositoryBase<TaskAssignment, Integer> implements TaskAssignmentRepository {

    @Autowired
    private TaskAssignmentJpaRepository jpaRepository;

    @Autowired
    private TaskDetailJpaRepository jpaTaskDetailRepository;

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
        List<TaskDetail> tasks = obj.getAttachment();
        TaskAssignment assignment = jpaRepository.save(obj);
        List<TaskDetail> dbTasks = assignment.getTaskDetails();
        for(TaskDetail db : dbTasks) {
            boolean deleted = true;
            for(TaskDetail task : tasks) {
                if (task.getTaskDetailId() == db.getTaskDetailId()) {
                    deleted = false;
                    break;
                }
            }
            if (deleted) {
                jpaTaskDetailRepository.delete(db);
            }
        }
        for(TaskDetail task : tasks) {
            TaskDetail detail = null;
            if (task.getTaskDetailId() != 0) {
                detail = jpaTaskDetailRepository.getOne(task.getTaskDetailId());
            } else {
                detail = new TaskDetail();
                detail.setTaskAssignment(assignment);
            }
            detail.setName(task.getName());
            detail.setEstimate(task.getEstimate());
            detail.setDescription(task.getDescription());
            jpaTaskDetailRepository.save(detail);
        }
        return jpaRepository.getOne(assignment.getTaskAssignmentId());
    }

    @Override
    public void delete(Integer id) {
        TaskAssignment obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
