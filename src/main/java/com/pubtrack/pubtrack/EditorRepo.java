package com.pubtrack.pubtrack;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
public interface EditorRepo extends CrudRepository<Editor, String>
{
    Editor findByEmail(String email);
}