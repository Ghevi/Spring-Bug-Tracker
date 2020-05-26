package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "projects", path = "projects")
public interface ProjectRepository extends JpaRepository<Project, Long> {
}
