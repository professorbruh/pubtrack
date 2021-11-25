package com.pubtrack.pubtrack;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewerComment implements IReviewerComment {

    @Autowired
    private static CommentRepo repository;
    


    @Override
    public List<Comment> findBySearchTermNative(String reviewerID) {
        // TODO Auto-generated method stub
        var rev_dash = (List<Comment>) repository.findBySearchTermNative(reviewerID);
        return rev_dash;
    }
}


