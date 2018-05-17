package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "requests")
@Entity
@Table(name="request")
public class Request implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="request_id")
    private int requestId;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "project_id", referencedColumnName = "project_id")
	private Project project;

	@JsonApiRelation
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "skill_id", referencedColumnName = "skill_id")
	private Skill skill;
    
    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 45)
    private String description;

	public int getRequestId() {
		return requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Skill getSkill() {
		return skill;
	}

	public void setSkill(Skill skill) {
		this.skill = skill;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    
}
