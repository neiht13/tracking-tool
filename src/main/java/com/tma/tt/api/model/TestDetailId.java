package com.tma.tt.api.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

import com.tma.tt.api.common.CommonJsonApiUtils;

@Embeddable
public class TestDetailId implements Serializable {
	
	@Basic
	@Column(name="test_id")
    private Long testId;
	
	@Basic
	@Column(name="question_id")
    private Long questionId;

	public TestDetailId() {
		
	}
	
	public TestDetailId(String compositeId) {
        Object[] ids = CommonJsonApiUtils.getValuesFromDelimitedString(compositeId, CommonJsonApiUtils.COMPOSITE_ID_SEPARATOR, new Class[]{Integer.class, Integer.class});
        this.testId = (Long)ids[0];
        this.questionId = (Long)ids[1];
    }
	
	public String getCompositeId() {
        return CommonJsonApiUtils.getStringValue(testId) + CommonJsonApiUtils.COMPOSITE_ID_SEPARATOR + CommonJsonApiUtils.getStringValue(questionId);
    }
	
}
