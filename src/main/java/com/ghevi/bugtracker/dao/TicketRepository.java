package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface TicketRepository extends JpaRepository<Ticket, Long> {
}
