package com.tma.tt.api.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:candidate-upload.properties")
public class CandidateUploadConfig {

    @Value("${upload.folder}")
    private String uploadFolder;

    public String getUploadFolder() {
        return uploadFolder;
    }
}
