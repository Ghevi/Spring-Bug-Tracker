package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TicketRepository extends JpaRepository<Ticket, Long> {
}
