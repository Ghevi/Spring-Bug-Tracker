package com.ghevi.bugtracker.entity;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name="ticket_comment")
@Data
public class TicketComment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "ticket_id", nullable = false)
    private Ticket ticket;

    @Column(name = "commenter")
    private String commenter;

    @Column(name = "message")
    private String message;

    @Column(name = "created")
    @CreationTimestamp
    private Timestamp created;
}
