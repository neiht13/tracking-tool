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
    private int testId;
	
	@Basic
	@Column(name="question_id")
    private int questionId;

	public TestDetailId() {
		
	}
	
	public TestDetailId(String compositeId) {
        Object[] ids = CommonJsonApiUtils.getValuesFromDelimitedString(compositeId, CommonJsonApiUtils.COMPOSITE_ID_SEPARATOR, new Class[]{Integer.class, Integer.class});
        this.testId = (Integer)ids[0];
        this.questionId = (Integer)ids[1];
    }
	
	public String getCompositeId() {
        return CommonJsonApiUtils.getStringValue(testId) + CommonJsonApiUtils.COMPOSITE_ID_SEPARATOR + CommonJsonApiUtils.getStringValue(questionId);
    }
	
}
