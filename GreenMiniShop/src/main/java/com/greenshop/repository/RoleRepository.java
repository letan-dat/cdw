package com.greenshop.repository;

import org.springframework.stereotype.Repository;
import com.greenshop.entity.Role;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
	@Query(value = "select r.role_name from green_shop.role r join green_shop.role_user ru on r.id = ru.roleId where ru.userId=:userId", nativeQuery = true)
	public List<String> getRoleName(@Param("userId") Long userId);

	public Role findByName(String name);

}
