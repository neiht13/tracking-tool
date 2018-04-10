package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.UserFeedbackJpaRepository;
import com.tma.tt.api.model.UserFeedback;
import io.katharsis.queryspec.QuerySpec;
import io.katharsis.repository.ResourceRepositoryBase;
import io.katharsis.resource.links.DefaultPagedLinksInformation;
import io.katharsis.resource.list.DefaultResourceList;
import io.katharsis.resource.list.ResourceList;
import io.katharsis.resource.meta.DefaultPagedMetaInformation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserFeedbackRepositoryImpl extends ResourceRepositoryBase<UserFeedback, Integer> implements UserFeedbackRepository {

    @Autowired
    private UserFeedbackJpaRepository jpaRepository;

    public UserFeedbackRepositoryImpl() {
        super(UserFeedback.class);
    }

	@Override
	public ResourceList<UserFeedback> findAll(QuerySpec querySpec) {
		ResourceList<UserFeedback> list = new DefaultResourceList<UserFeedback>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<UserFeedback> userFeedbacks = jpaRepository.findAll();
        querySpec.apply(userFeedbacks, list);
        return list;
	}
}
