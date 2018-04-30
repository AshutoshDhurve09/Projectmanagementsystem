package com.v2Technologies.project_management_system.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.v2Technologies.project_management_system.entity.Company;

public interface CompanyRepository extends JpaRepository<Company,java.lang.Long>
{

}
