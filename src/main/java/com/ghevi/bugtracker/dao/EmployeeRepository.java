package com.ghevi.bugtracker.dao;

import com.ghevi.bugtracker.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
