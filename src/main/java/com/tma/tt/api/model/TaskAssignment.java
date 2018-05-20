package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "task-assignments")
@Entity
@Table(name="task_assignment")
public class TaskAssignment implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="task_assignment_id")
    private int taskAssignmentId;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

	@Basic
	@Column(name = "name", nullable = false, insertable = true, updatable = true, length = 45)
	private String name;

    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 255)
    private String description;

	public int getTaskAssignmentId() {
		return taskAssignmentId;
	}

	public void setTaskAssignmentId(int taskAssignmentId) {
		this.taskAssignmentId = taskAssignmentId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
