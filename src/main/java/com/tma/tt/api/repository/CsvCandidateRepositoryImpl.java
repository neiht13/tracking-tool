package com.tma.tt.api.repository;

import com.tma.tt.api.jpa.CandidateJpaRepository;
import com.tma.tt.api.jpa.CsvCandidateJpaRepository;
import com.tma.tt.api.model.Candidate;
import com.tma.tt.api.model.CsvCandidate;
import com.tma.tt.api.model.CsvRowStatus;
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
public class CsvCandidateRepositoryImpl extends ResourceRepositoryBase<CsvCandidate, Long> implements CsvCandidateRepository {

    @Autowired
    private CsvCandidateJpaRepository jpaCsvRepository;

    @Autowired
    private CandidateJpaRepository jpaRepository;

    public CsvCandidateRepositoryImpl() {
        super(CsvCandidate.class);
    }

	@Override
	public ResourceList<CsvCandidate> findAll(QuerySpec querySpec) {
		ResourceList<CsvCandidate> list = new DefaultResourceList<CsvCandidate>(new DefaultPagedMetaInformation(), new DefaultPagedLinksInformation());
        List<CsvCandidate> csvCandidates = jpaCsvRepository.findAll();
        querySpec.apply(csvCandidates, list);
        return list;
	}

    @Override
    public CsvCandidate save(CsvCandidate obj) {
        if (obj.isReviewed()) {
            obj.setStatus(CsvRowStatus.REVIEWED);
            Candidate candidate = new Candidate();
            candidate.setFullName(obj.getFullName());
            candidate.setPhone(obj.getPhone());
            candidate.setEmail(obj.getEmail());
            candidate.setUniversity(obj.getUniversity());
            candidate.setFaculty(obj.getFaculty());
            candidate.setGraduationYear(obj.getGraduationYear());
            candidate.setPosition(obj.getPosition());
            candidate.setDescription(obj.getDescription());
            jpaRepository.save(candidate);
        }
        return jpaCsvRepository.save(obj);
    }

    @Override
    public void delete(Long id) {
        CsvCandidate obj = jpaCsvRepository.getOne(id);
        this.jpaCsvRepository.delete(obj);
    }
}
