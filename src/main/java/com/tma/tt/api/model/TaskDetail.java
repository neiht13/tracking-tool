package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "task-details")
@Entity
@Table(name="task_detail")
public class TaskDetail implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="task_detail_id")
    private Long taskDetailId;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "task_assignment_id", referencedColumnName = "task_assignment_id")
	private TaskAssignment taskAssignment;

	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private String name;

	@Basic
	@Column(name = "estimate", nullable = false, insertable = true, updatable = true)
	private float estimate;

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 255)
    private String description;

	public Long getTaskDetailId() {
		return taskDetailId;
	}

	public void setTaskDetailId(Long taskDetailId) {
		this.taskDetailId = taskDetailId;
	}

	public TaskAssignment getTaskAssignment() {
		return taskAssignment;
	}

	public void setTaskAssignment(TaskAssignment taskAssignment) {
		this.taskAssignment = taskAssignment;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getEstimate() {
		return estimate;
	}

	public void setEstimate(float estimate) {
		this.estimate = estimate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
