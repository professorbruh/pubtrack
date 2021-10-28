package com.pubtrack.pubtrack;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
@Entity
public class Student {
    @Id
    private String email;
    private String name;
    private String academic_year;
    private String branch;
    @OneToMany
    private Set<Student> student = new HashSet<>();
    @OneToOne
    @MapsId
    @JoinColumn(name = "email")
    private Login login;
    


  



    /**
     * @return String return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return String return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return String return the academic_year
     */
    public String getAcademic_year() {
        return academic_year;
    }

    /**
     * @param academic_year the academic_year to set
     */
    public void setAcademic_year(String academic_year) {
        this.academic_year = academic_year;
    }

    /**
     * @return String return the branch
     */
    public String getBranch() {
        return branch;
    }

    /**
     * @param branch the branch to set
     */
    public void setBranch(String branch) {
        this.branch = branch;
    }

    /**
     * @return Set<Student> return the student
     */
    public Set<Student> getStudent() {
        return student;
    }

    /**
     * @param student the student to set
     */
    public void setStudent(Set<Student> student) {
        this.student = student;
    }

    /**
     * @return Login return the login
     */
    public Login getLogin() {
        return login;
    }

    /**
     * @param login the login to set
     */
    public void setLogin(Login login) {
        this.login = login;
    }

}
