package com.pubtrack.pubtrack;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Student {
    @Id
    @Column(name="student_id")
    private int ref_id;
    private String name;
    @Column(name="academic_year")
    private String academic_year;
    private String branch;
    protected Student() {}
    

    /**
     * @return int return the ref_id
     */
    public int getRef_id() {
        return ref_id;
    }

    /**
     * @param ref_id the ref_id to set
     */
    public void setRef_id(int ref_id) {
        this.ref_id = ref_id;
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

}
