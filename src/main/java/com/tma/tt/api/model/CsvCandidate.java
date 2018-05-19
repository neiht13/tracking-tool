package com.tma.tt.api.model;

import com.opencsv.bean.CsvBindByName;
import com.tma.tt.api.common.Validatable;
import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiResource;

import javax.persistence.*;
import java.io.Serializable;

@JsonApiResource(type = "csv-candidates")
@Entity
@Table(name="csv_candidate")
public class CsvCandidate implements Serializable, Validatable {
    private static final long serialVersionUID = 1L;

    @JsonApiId
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="csv_candidate_id")
    private int csvCandidateId;

    @Basic
    @Column(name = "csv_id", nullable = false, insertable = true, updatable = true, length = 100)
    private String csvId;

    @Enumerated(EnumType.STRING)
    @Column(name = "status")
    private CsvRowStatus status;

    @Basic
    @Column(name = "full_name", nullable = false, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "full_name", required = true)
    private String fullName;

    @Basic
    @Column(name = "phone", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "phone")
    private String phone;

    @Basic
    @Column(name = "email", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "email")
    private String email;

    @Basic
    @Column(name = "university", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "university")
    private String university;

    @Basic
    @Column(name = "faculty", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "faculty")
    private String faculty;

    @Basic
    @Column(name = "graduation_year", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "graduation_year")
    private String graduationYear;

    @Basic
    @Column(name = "position", nullable = true, insertable = true, updatable = true, length = 45)
    @CsvBindByName(column = "position")
    private String position;

    @Basic
    @Column(name = "description", nullable = true, insertable = true, updatable = true, length = 255)
    @CsvBindByName(column = "description")
    private String description;

    @Transient
    private boolean reviewed;

    public int getCsvCandidateId() {
        return csvCandidateId;
    }

    public void setCsvCandidateId(int csvCandidateId) {
        this.csvCandidateId = csvCandidateId;
    }

    public String getCsvId() {
        return csvId;
    }

    public void setCsvId(String csvId) {
        this.csvId = csvId;
    }

    public CsvRowStatus getStatus() {
        return status;
    }

    public void setStatus(CsvRowStatus status) {
        this.status = status;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getGraduationYear() {
        return graduationYear;
    }

    public void setGraduationYear(String graduationYear) {
        this.graduationYear = graduationYear;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isReviewed() {
        return reviewed;
    }

    public void setReviewed(boolean reviewed) {
        this.reviewed = reviewed;
    }
}
