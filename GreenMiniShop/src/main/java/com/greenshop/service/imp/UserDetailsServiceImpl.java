package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.greenshop.entity.Users;
import com.greenshop.repository.RoleRepository;
import com.greenshop.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRep;

	@Autowired
	private RoleRepository roleRep;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Users userEntity = this.userRep.findByEmail(email);

		if (userEntity == null) {
			System.out.println("User not found! " + email);
			throw new UsernameNotFoundException("User " + email + " was not found in the database");
		}

		System.out.println("Found User: " + userEntity);

		// [ROLE_USER, ROLE_ADMIN,..]
		List<String> roleNames = this.roleRep.getRoleName(userEntity.getId());

		List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
		if (roleNames != null) {
			for (String role : roleNames) {
				// ROLE_USER, ROLE_ADMIN,..
				GrantedAuthority authority = new SimpleGrantedAuthority(role);
				grantList.add(authority);
			}
		}

		UserDetails userDetails = (UserDetails) new User(userEntity.getEmail(), //
				userEntity.getPassword(), grantList);

		return userDetails;
	}
}
