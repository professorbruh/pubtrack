package com.pubtrack.pubtrack;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;
@Entity
public class Editor {
    @Id
    private String pub_id;
    private String name;
    private Boolean scopus_index;
    private String subscription_type;
    private String domain;
    private String email;
    private String type;
    private String place;
    @DateTimeFormat
    private Date date;



   


    

    /**
     * @return String return the pub_id
     */
    public String getPub_id() {
        return pub_id;
    }

    /**
     * @param pub_id the pub_id to set
     */
    public void setPub_id(String pub_id) {
        this.pub_id = pub_id;
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
     * @return Boolean return the scopus_index
     */
    public Boolean isScopus_index() {
        return scopus_index;
    }

    /**
     * @param scopus_index the scopus_index to set
     */
    public void setScopus_index(Boolean scopus_index) {
        this.scopus_index = scopus_index;
    }

    /**
     * @return String return the subscription_type
     */
    public String getSubscription_type() {
        return subscription_type;
    }

    /**
     * @param subscription_type the subscription_type to set
     */
    public void setSubscription_type(String subscription_type) {
        this.subscription_type = subscription_type;
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
     * @return String return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return String return the place
     */
    public String getPlace() {
        return place;
    }

    /**
     * @param place the place to set
     */
    public void setPlace(String place) {
        this.place = place;
    }

    /**
     * @return Date return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }

    /**
     * @return Set<Editor> return the editors
     */


    /**
     * @param editors the editors to set
     */

}
