package com.tma.tt.api.service.candidate;

import com.opencsv.bean.CsvBindByName;

public class CSVCandidate {

    @CsvBindByName(column = "name", required = true)
    private String name;

    @CsvBindByName(column = "country")
    private String country;

    @CsvBindByName(column = "description")
    private String description;

    public String getName() {
        return name;
    }

    public String getCountry() {
        return country;
    }

    public String getDescription() {
        return description;
    }
}
