package com.tma.tt.api.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

import com.tma.tt.api.common.Validatable;

import io.katharsis.resource.annotations.JsonApiId;
import io.katharsis.resource.annotations.JsonApiRelation;
import io.katharsis.resource.annotations.JsonApiResource;

@JsonApiResource(type = "tests")
@Entity
@Table(name="test")
public class Test implements Serializable, Validatable {
	private static final long serialVersionUID = 1L;

    @JsonApiId
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="test_id")
    private Long testId;
    
    @Basic
    @Column(name = "description", nullable = false, insertable = true, updatable = true, length = 45)
    private String description;

    @JsonApiRelation
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "test_id", referencedColumnName = "test_id")
    @OrderBy("testDetailId")
    private List<TestDetail> testDetails;

    @Basic
    @Column(name = "level", nullable = false, insertable = true, updatable = true, length = 11)
    private int level;

    @Basic
    @Column(name = "score_minimum", nullable = false, insertable = true, updatable = true, length = 11)
    private int scoreMinimum;

    @Basic
    @Column(name = "create_date", nullable = true, insertable = true, updatable = true)
    private Date createDate;

    @JsonApiRelation
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "test_detail",
            joinColumns = @JoinColumn(name = "test_id"),
            inverseJoinColumns = @JoinColumn(name = "question_id"))
    private Set<Question> questions = new HashSet<>();

    public Long getTestId() {
        return testId;
    }

    public void setTestId(Long testId) {
        this.testId = testId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getScoreMinimum() {
        return scoreMinimum;
    }

    public void setScoreMinimum(int scoreMinimum) {
        this.scoreMinimum = scoreMinimum;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public List<TestDetail> getTestDetails() {
        return testDetails;
    }

    public void setTestDetails(List<TestDetail> testDetails) {
        this.testDetails = testDetails;
    }

    public Set<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(Set<Question> questions) {
        this.questions = questions;
    }
}
