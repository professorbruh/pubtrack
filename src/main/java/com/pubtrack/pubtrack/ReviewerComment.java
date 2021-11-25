package com.pubtrack.pubtrack;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewerComment implements IReviewerComment {

    @Autowired
    private CommentRepo repository;


    @Override
    public List<Comment> findById(String reviewerID) {
        // TODO Auto-generated method stub
        (List<Comment>) rev_dash = (List<Comment>) repository.findByID(String reviewerID);
        return rev_dash;
    }
}


