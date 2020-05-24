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

    @Column(name = "id")
    private String commenter;

    @Column(name = "id")
    private String message;

    @Column(name = "id")
    @CreationTimestamp
    private Timestamp created;
}
