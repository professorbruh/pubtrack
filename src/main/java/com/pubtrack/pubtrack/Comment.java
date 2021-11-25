package com.pubtrack.pubtrack;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comment{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String comment_id;
    private String referenceid;
    private String reviewerid;
    private String comments;

   

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


    /**
     * @return String return the referenceid
     */
    public String getReferenceid() {
        return referenceid;
    }

    /**
     * @param referenceid the referenceid to set
     */
    public void setReferenceid(String referenceid) {
        this.referenceid = referenceid;
    }

    /**
     * @return String return the reviewerid
     */
    public String getReviewerid() {
        return reviewerid;
    }

    /**
     * @param reviewerid the reviewerid to set
     */
    public void setReviewerid(String reviewerid) {
        this.reviewerid = reviewerid;
    }

}
