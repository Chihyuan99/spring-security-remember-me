package com.demo.test;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncoderTest {
	
	@Test
	public void testPasswordEncode() {
		String encoded=new BCryptPasswordEncoder().encode("admin@123");
		System.out.println(encoded);
	}
	
}
