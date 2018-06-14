package com.tma.tt.api.model;

import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import java.io.Serializable;
import java.util.List;

@JsonApiResource(type = "test-assign")
public class TestAssignment implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
    private Long id;

    private List<Long> testIds;

    private List<Long> userTestIds;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Long> getTestIds() {
        return testIds;
    }

    public void setTestIds(List<Long> testIds) {
        this.testIds = testIds;
    }

    public List<Long> getUserTestIds() {
        return userTestIds;
    }

    public void setUserTestIds(List<Long> userTestIds) {
        this.userTestIds = userTestIds;
    }
}
