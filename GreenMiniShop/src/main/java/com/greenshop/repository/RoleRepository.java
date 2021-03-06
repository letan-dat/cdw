package com.greenshop.repository;

import org.springframework.stereotype.Repository;
import com.greenshop.entity.Role;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
	@Query(value = "select role.role_name from role join role_user on role.id=role_user.role_id where role_user.user_id=:userId", nativeQuery = true)
	public List<String> getRoleName(@Param("userId") Long userId);

//	public Role findByRoleName(String role_name);

}
