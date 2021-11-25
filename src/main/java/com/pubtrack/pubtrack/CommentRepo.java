package com.pubtrack.pubtrack;

import org.springframework.data.repository.CrudRepository;
public interface CommentRepo extends CrudRepository<Comment,String>
{
    
}
