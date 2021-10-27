package com.pubtrack.pubtrack;

import org.springframework.data.repository.CrudRepository;
public interface PaperRepo extends CrudRepository<Paper, String>
{

}