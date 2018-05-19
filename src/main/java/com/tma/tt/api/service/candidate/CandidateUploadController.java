package com.tma.tt.api.service.candidate;

import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.FileOutputStream;
import java.io.Reader;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Iterator;

@Controller
public class CandidateUploadController {

    private CandidateUploadService uploadService;
    private CandidateUploadConfig uploadConfig;

    @Autowired
    public CandidateUploadController(CandidateUploadService uploadService, CandidateUploadConfig uploadConfig) {
        this.uploadService = uploadService;
        this.uploadConfig = uploadConfig;
    }

    @PostMapping("/api/candidate-candidate")
    public String handleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
        try {
            File folder = new File(uploadConfig.getUploadFolder());
            if (!folder.exists()) {
                folder.mkdir();
            }
            File successFolder = new File(uploadConfig.getUploadSuccessFolder());
            if (!successFolder.exists()) {
                successFolder.mkdir();
            }
            File failedFolder = new File(uploadConfig.getUploadFailedFolder());
            if (!failedFolder.exists()) {
                failedFolder.mkdir();
            }
            Date date = new Date();
            String fileName = uploadConfig.getUploadFolder() + "/" + file.getOriginalFilename() + '-'+date.getTime();
            File csvFile = new File(fileName);
            csvFile.createNewFile();
            FileOutputStream fos = new FileOutputStream(csvFile);
            fos.write(file.getBytes());
            fos.close();

            Reader reader = Files.newBufferedReader(Paths.get(fileName));

            CsvToBean<CSVCandidate> csvToBean = new CsvToBeanBuilder<CSVCandidate>(reader)
                    .withType(CSVCandidate.class)
                    .withIgnoreLeadingWhiteSpace(true)
                    .build();

            Iterator<CSVCandidate> csvIterator = csvToBean.iterator();
            while (csvIterator.hasNext()) {
                CSVCandidate csv = csvIterator.next();
                System.out.println("Name : " + csv.getName());
                System.out.println("Country : " + csv.getCountry());
                System.out.println("Description : " + csv.getDescription());
                System.out.println("==========================");
            }

        }
        catch(Exception e) {
            System.out.println(e.getMessage());
        }

        uploadService.process();

        return "redirect:/";
    }

}
