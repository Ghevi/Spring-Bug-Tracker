package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.TicketComment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "ticketComment", path = "ticket-comments")
public interface TicketCommentRepository extends JpaRepository<TicketComment, Long> {
}
