package com.pubtrack.pubtrack;

import org.springframework.data.repository.CrudRepository;
public interface ReviewerRepo extends CrudRepository<Reviewer, String>
{
    Reviewer findByRevid(String rev_id);
}