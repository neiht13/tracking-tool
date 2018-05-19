package com.tma.tt.api.service.candidate;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:candidate-candidate.properties")
public class CandidateUploadConfig {

    @Value("${candidate.folder}")
    private String uploadFolder;

    @Value("${candidate.success.folder}")
    private String uploadSuccessFolder;

    @Value("${candidate.failed.folder}")
    private String uploadFailedFolder;

    public String getUploadFolder() {
        return uploadFolder;
    }

    public String getUploadSuccessFolder() {
        return uploadSuccessFolder;
    }

    public String getUploadFailedFolder() {
        return uploadFailedFolder;
    }
}
