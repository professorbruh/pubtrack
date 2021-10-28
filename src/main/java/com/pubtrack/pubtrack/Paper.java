package com.pubtrack.pubtrack;
import java.sql.Date;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Paper {
    @Id
    private String ref_id;
    private String title;
    private String domain;
    private int status;
    @DateTimeFormat
    private Date data_of_submission;
    private String plagiarism_percentage;
    private String manuscript;
    private String plagiarism_report;
    @ManyToOne
    @JoinColumn(name = "pub_id")
    private Editor editor;
    @OneToOne
    @PrimaryKeyJoinColumn
    private Published published;
    @ManyToOne
    @JoinColumn(name = "email")
    private Student student;






    /**
     * @return String return the ref_id
     */
    public String getRef_id() {
        return ref_id;
    }

    /**
     * @param ref_id the ref_id to set
     */
    public void setRef_id(String ref_id) {
        this.ref_id = ref_id;
    }

    /**
     * @return String return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return String return the domain
     */
    public String getDomain() {
        return domain;
    }

    /**
     * @param domain the domain to set
     */
    public void setDomain(String domain) {
        this.domain = domain;
    }

    /**
     * @return int return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return Date return the data_of_submission
     */
    public Date getData_of_submission() {
        return data_of_submission;
    }

    /**
     * @param data_of_submission the data_of_submission to set
     */
    public void setData_of_submission(Date data_of_submission) {
        this.data_of_submission = data_of_submission;
    }

    /**
     * @return String return the plagiarism_percentage
     */
    public String getPlagiarism_percentage() {
        return plagiarism_percentage;
    }

    /**
     * @param plagiarism_percentage the plagiarism_percentage to set
     */
    public void setPlagiarism_percentage(String plagiarism_percentage) {
        this.plagiarism_percentage = plagiarism_percentage;
    }

    /**
     * @return String return the manuscript
     */
    public String getManuscript() {
        return manuscript;
    }

    /**
     * @param manuscript the manuscript to set
     */
    public void setManuscript(String manuscript) {
        this.manuscript = manuscript;
    }

    /**
     * @return String return the plagiarism_report
     */
    public String getPlagiarism_report() {
        return plagiarism_report;
    }

    /**
     * @param plagiarism_report the plagiarism_report to set
     */
    public void setPlagiarism_report(String plagiarism_report) {
        this.plagiarism_report = plagiarism_report;
    }

    /**
     * @return Editor return the editor
     */
    public Editor getEditor() {
        return editor;
    }

    /**
     * @param editor the editor to set
     */
    public void setEditor(Editor editor) {
        this.editor = editor;
    }

    /**
     * @return Published return the published
     */
    public Published getPublished() {
        return published;
    }

    /**
     * @param published the published to set
     */
    public void setPublished(Published published) {
        this.published = published;
    }

    /**
     * @return Student return the student
     */
    public Student getStudent() {
        return student;
    }

    /**
     * @param student the student to set
     */
    public void setStudent(Student student) {
        this.student = student;
    }

}
