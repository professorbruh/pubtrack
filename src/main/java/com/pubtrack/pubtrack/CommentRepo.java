package com.pubtrack.pubtrack;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
public interface CommentRepo extends CrudRepository<Comment,String>
{
    @Query(value="select comment.reviewer_id,paper.title,editor.name,comment.comments"+
    "from comment inner join paper on comment.reference_id=paper.ref_id"+
    "inner join editor on editor.pub_id=paper.pub_id where comment.reviewer_id= :reviewerID;",
    nativeQuery=true)
    List<Comment> findBySearchTermNative(String reviewerID);
}
