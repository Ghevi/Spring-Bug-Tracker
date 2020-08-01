package com.ghevi.bugtracker.entity;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;

@Entity
@Table(name="ticket")
@Data
public class Ticket {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "ticket_title")
    private String ticketTitle;

    @Column(name = "ticket_description")
    private String ticketDescription;

    @Column(name = "submitter")
    private String submitter;

    @Column(name = "ticket_priority")
    private String ticketPriority;

    @Column(name = "ticket_status")
    private String ticketStatus;

    @Column(name = "ticket_type")
    private String ticketType;

    @Column(name = "created")
    @CreationTimestamp
    private Timestamp created;

    @Column(name = "updated")
    @UpdateTimestamp
    private Timestamp updated;

    @ManyToOne
    @JoinColumn(name = "project_id", nullable = false)
    private Project project;

    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false )
    private Employee employee;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ticket")
    private Set<TicketComment> ticketComments;

}
