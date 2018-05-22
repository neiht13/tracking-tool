package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.SkillJpaRepository;
import com.tma.tt.api.model.Skill;
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
public class SkillRepositoryImpl extends ResourceRepositoryBase<Skill, Long> implements SkillRepository {

    @Autowired
    private SkillJpaRepository jpaRepository;

    public SkillRepositoryImpl() {
        super(Skill.class);
    }

	@Override
	public ResourceList<Skill> findAll(QuerySpec querySpec) {
		ResourceList<Skill> list = new DefaultResourceList<Skill>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<Skill> skills = jpaRepository.findAll();
        querySpec.apply(skills, list);
        return list;
	}

    @Override
    public Skill save(Skill obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Long id) {
        Skill obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
