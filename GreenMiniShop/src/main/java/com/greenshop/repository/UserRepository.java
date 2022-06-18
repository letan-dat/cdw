package com.greenshop.repository;

import com.greenshop.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<Users, Long> {

    Users findByEmail(String email);

    Users findByEmailIgnoreCase(String email);

@Query(value = "select u.* from user u where id=:id",nativeQuery = true)
    Users findUserById(@Param("id") long id);
}
