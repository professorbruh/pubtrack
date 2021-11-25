package com.pubtrack.pubtrack;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
public interface CommentRepo extends CrudRepository<Comment, String>
{
    
}
