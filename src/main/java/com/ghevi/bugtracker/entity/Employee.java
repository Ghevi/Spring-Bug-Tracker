package com.ghevi.bugtracker.entity;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.ghevi.bugtracker.config.BCryptPasswordDeserializer;
import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.util.Set;

@Entity
@Table(name="employee")
@Data //getters setters
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @NotNull
    @NotEmpty
    @Column(name = "user_name")
    private String userName;

    @Column(name = "email")
    @Email
    @NotNull
    @NotEmpty
    private String email;

    @Column(name = "password", nullable = false, length = 60)
    @Size(min=60, max = 60)
    @JsonDeserialize(using = BCryptPasswordDeserializer.class)
    private String password;

    @Column(name = "role")
    @NotNull
    @NotEmpty
    private String role;

    @ManyToMany(fetch = FetchType.LAZY,
                cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
    @JoinTable(
            name="project_employee",
            joinColumns=@JoinColumn(name="employee_id"),
            inverseJoinColumns=@JoinColumn(name="project_id")
    )
    private Set<Project> projects;
}
