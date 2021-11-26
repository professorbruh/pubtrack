package com.pubtrack.pubtrack;
import org.springframework.data.repository.CrudRepository;
import java.util.List;
public interface CommentRepo extends CrudRepository<Comment, String>
{
    List<Comment> findByReferenceid(String referenceid);
}
