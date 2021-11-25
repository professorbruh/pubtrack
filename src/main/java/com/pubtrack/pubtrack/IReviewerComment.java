package com.pubtrack.pubtrack;

import java.util.List;
public interface IReviewerComment {
    List<Comment> findBySearchTermNative(String reviewerID);
}

