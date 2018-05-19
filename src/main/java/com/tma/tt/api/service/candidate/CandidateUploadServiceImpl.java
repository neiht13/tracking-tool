package com.tma.tt.api.service.candidate;

import com.tma.tt.api.jpa.AreaJpaRepository;
import com.tma.tt.api.jpa.CsvCandidateJpaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Iterator;

@Component
public class CandidateUploadServiceImpl implements CandidateUploadService {

    @Autowired
    private CsvCandidateJpaRepository jpaRepository;

    @Override
    public void process(String csvId, Iterator<CsvCandidate> candidates) {
        while (candidates.hasNext()) {
            CsvCandidate csv = candidates.next();
            csv.setCsvId(csvId);
            jpaRepository.save(csv);
            System.out.println("getCsvId : " + csv.getCsvId());
            System.out.println("getPhone : " + csv.getPhone());
            System.out.println("getEmail : " + csv.getEmail());
            System.out.println("getUniversity : " + csv.getUniversity());
            System.out.println("getFaculty : " + csv.getFaculty());
            System.out.println("getGraduationYear : " + csv.getGraduationYear());
            System.out.println("getPosition : " + csv.getPosition());
            System.out.println("getDescription : " + csv.getDescription());
            System.out.println("==========================");
        }
        System.out.println("=================== test");
    }

}
