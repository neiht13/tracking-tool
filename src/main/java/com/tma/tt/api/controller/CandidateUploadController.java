package com.tma.tt.api.controller;

import com.tma.tt.api.config.CandidateUploadConfig;
import com.tma.tt.api.service.CandidateUploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.FileOutputStream;

@Controller
public class CandidateUploadController {

    private CandidateUploadService uploadService;
    private CandidateUploadConfig uploadConfig;

    @Autowired
    public CandidateUploadController(CandidateUploadService uploadService, CandidateUploadConfig uploadConfig) {
        this.uploadService = uploadService;
        this.uploadConfig = uploadConfig;
    }

    @PostMapping("/api/upload-candidate")
    public String handleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
        try {
            File folder = new File(uploadConfig.getUploadFolder());
            if (!folder.exists()) {
                folder.mkdir();
            }
            File csvFile = new File(uploadConfig.getUploadFolder() + "/" + file.getOriginalFilename());
            csvFile.createNewFile();
            FileOutputStream fos = new FileOutputStream(csvFile);
            fos.write(file.getBytes());
            fos.close();
        }
        catch(Exception e) {
            System.out.println(e.getMessage());
        }

        uploadService.process();

        return "redirect:/";
    }

}
