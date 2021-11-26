package com.pubtrack.pubtrack;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
public class Published {
    @Id
    private Long ref_id;
    private int ISBN;
    @DateTimeFormat
    private Date date_of_Publication;
    @OneToOne
    @MapsId
    private Paper paper;

    /**
     * @return String return the ref_id
     */
    public Long getRef_id() {
        return ref_id;
    }

    /**
     * @param ref_id the ref_id to set
     */
    public void setRef_id(Long ref_id) {
        this.ref_id = ref_id;
    }

    /**
     * @return int return the ISBN
     */
    public int getISBN() {
        return ISBN;
    }

    /**
     * @param ISBN the ISBN to set
     */
    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    /**
     * @return Date return the date_of_Publication
     */
    public Date getDate_of_Publication() {
        return date_of_Publication;
    }

    /**
     * @param date_of_Publication the date_of_Publication to set
     */
    public void setDate_of_Publication(Date date_of_Publication) {
        this.date_of_Publication = date_of_Publication;
    }

    /**
     * @return Paper return the paper
     */
    public Paper getPaper() {
        return paper;
    }

    /**
     * @param paper the paper to set
     */
    public void setPaper(Paper paper) {
        this.paper = paper;
    }

}
