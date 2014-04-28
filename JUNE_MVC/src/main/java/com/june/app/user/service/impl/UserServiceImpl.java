/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.june.app.user.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.user.model.RoleInfo;
import com.june.app.user.model.UserInfo;
import com.june.app.user.repository.UserRepository;
import com.june.app.user.service.UserService;

/**
 * Mostly used as a facade for all Petclinic controllers Also a placeholder for @Transactional
 * and @Cacheable annotations
 *
 * @author Michael Isvy
 */
@Service
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;

	@Autowired
	public UserServiceImpl(UserRepository userRepository) {

		this.userRepository = userRepository;
	}

	@Override
	@Transactional(readOnly = true)
	public UserInfo selectUser(int seq) throws DataAccessException {
		return userRepository.selectUser(seq);
	}

	@Override
	@Transactional(readOnly = true)
	public Long selectUserId(String userId) throws DataAccessException {
		return userRepository.selectUserId(userId);
	}

	@Override
	@Transactional(readOnly = true)
	public UserInfo registerUser(UserInfo userInfo) throws DataAccessException {

		userInfo.setStatus("A");
		String userPass = userInfo.getPassword();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(userPass);
		userInfo.setPassword(hashedPassword);
		UserInfo userInfoResult = userRepository.registerUser(userInfo);
		RoleInfo roleInfo = new RoleInfo();
		roleInfo.setRole("ROLE_USER");
		roleInfo.setUserInfo(userInfoResult);
		roleInfo.setRegiDate(new Date());
		userRepository.registerRole(roleInfo);
		return userInfoResult;

	}

	/*
	 * @SuppressWarnings("deprecation")
	 * 
	 * @Override public UserDetails loadUserByUsername(String username) throws
	 * UsernameNotFoundException, DataAccessException {
	 * System.out.println("Getting access details from employee dao !!");
	 * 
	 * // Ideally it should be fetched from database and populated instance of
	 * // #org.springframework.security.core.userdetails.User should be returned
	 * from this method //UserDetails user = new User(username, "password",
	 * true, true, true, true, new GrantedAuthority[]{ new
	 * GrantedAuthorityImpl("ROLE_USER") }); return user; }
	 */
}
