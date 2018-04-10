package com.tma.tt.api.repository;

import com.tma.tt.api.model.Test;
import com.tma.tt.api.model.TestDetail;
import io.katharsis.repository.RelationshipRepositoryBase;
import org.springframework.stereotype.Component;

@Component
public class TestDetailToTestRepositoryImpl extends RelationshipRepositoryBase<TestDetail, Integer, Test, Integer> {

    public TestDetailToTestRepositoryImpl() {
        super(TestDetail.class, Test.class);
    }

}
