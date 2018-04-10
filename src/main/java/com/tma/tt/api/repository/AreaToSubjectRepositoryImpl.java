package com.tma.tt.api.repository;

import com.tma.tt.api.model.Area;
import com.tma.tt.api.model.Subject;
import io.katharsis.repository.RelationshipRepositoryBase;
import org.springframework.stereotype.Component;

@Component
public class AreaToSubjectRepositoryImpl extends RelationshipRepositoryBase<Area, Integer, Subject, Integer> {

    public AreaToSubjectRepositoryImpl() {
        super(Area.class, Subject.class);
    }

}
