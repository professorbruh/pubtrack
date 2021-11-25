package com.pubtrack.pubtrack;
import java.sql.Date;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
@Entity
public class Comment{
    @Id
    private String comment_id;
    private String reference_id;
    private String reviewer_id;
    private String comments;

    /**
     * @return String return the reference_id
     */
    public String getReference_id() {
        return reference_id;
    }

    /**
     * @param reference_id the reference_id to set
     */
    public void setReference_id(String reference_id) {
        this.reference_id = reference_id;
    }

    /**
     * @return String return the reviewer_id
     */
    public String getReviewer_id() {
        return reviewer_id;
    }

    /**
     * @param reviewer_id the reviewer_id to set
     */
    public void setReviewer_id(String reviewer_id) {
        this.reviewer_id = reviewer_id;
    }

    /**
     * @return String return the comments
     */
    public String getComments() {
        return comments;
    }

    /**
     * @param comments the comments to set
     */
    public void setComments(String comments) {
        this.comments = comments;
    }


    /**
     * @return String return the comment_id
     */
    public String getComment_id() {
        return comment_id;
    }

    /**
     * @param comment_id the comment_id to set
     */
    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

}
