package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.Project;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "project", path = "projects")
public interface ProjectRepository extends JpaRepository<Project, Long> {
}
