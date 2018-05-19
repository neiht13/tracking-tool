package com.tma.tt.api.service.candidate;

import com.tma.tt.api.model.CsvCandidate;

import java.util.Iterator;

public interface CandidateUploadService {

    void process(String csvId, Iterator<CsvCandidate> candidates);

}
