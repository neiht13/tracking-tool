package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;
import io.katharsis.resource.annotations.JsonApiToOne;

@JsonApiResource(type = "study-plans")
@Entity
@Table(name="study_plan")
public class StudyPlan implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="study_plan_id")
    private Long studyPlanId;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User user;

    @JsonApiRelation
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "area_id", referencedColumnName = "area_id")
    private Area area;

    @Enumerated(EnumType.STRING)
    @Column(name = "completed")
    private YesNoFlag completed;

    public Long getStudyPlanId() {
        return studyPlanId;
    }

    public void setStudyPlanId(Long studyPlanId) {
        this.studyPlanId = studyPlanId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }


    public YesNoFlag getCompleted() {
        return completed;
    }

    public void setCompleted(YesNoFlag completed) {
        this.completed = completed;
    }

}
