package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.CsvCandidateJpaRepository;
import com.tma.tt.api.model.CsvCandidate;
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
public class CsvCandidateRepositoryImpl extends ResourceRepositoryBase<CsvCandidate, Integer> implements CsvCandidateRepository {

    @Autowired
    private CsvCandidateJpaRepository jpaRepository;

    public CsvCandidateRepositoryImpl() {
        super(CsvCandidate.class);
    }

	@Override
	public ResourceList<CsvCandidate> findAll(QuerySpec querySpec) {
		ResourceList<CsvCandidate> list = new DefaultResourceList<CsvCandidate>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<CsvCandidate> csvCandidates = jpaRepository.findAll();
        querySpec.apply(csvCandidates, list);
        return list;
	}

    @Override
    public CsvCandidate save(CsvCandidate obj) {
        return jpaRepository.save(obj);
    }

    @Override
    public void delete(Integer id) {
        CsvCandidate obj = jpaRepository.getOne(id);
        this.jpaRepository.delete(obj);
    }
}
