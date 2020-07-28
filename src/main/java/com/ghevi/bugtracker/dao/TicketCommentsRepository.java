package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.TicketComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "ticketComments", path = "ticket-comments")
public interface TicketCommentsRepository extends JpaRepository<TicketComment, Long> {
}
