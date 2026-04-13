package com.runner;


import com.intuit.karate.junit5.Karate;

public class Runner {
//	
//	@Karate.Test
//    Karate GetAllBooks() {
//				return Karate.run("classpath:features/GetAllBooks.feature")
//				.relativeTo(getClass());
//	}
	
	@Karate.Test
	Karate testPostBooks() {
		return Karate.run("classpath:features/createBook.feature")
				.relativeTo(getClass());
	}
	

}
