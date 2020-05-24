package com.ghevi.bugtracker.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name="employee")
@Data //getters setters
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "project_id", nullable = false)
    private Project project;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "email")
    private String email;

    @Column(name = "role_id")
    private int roleId;

}
