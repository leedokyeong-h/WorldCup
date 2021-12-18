package com.mycom.myapp;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class MyTest {

	@Test
	public void test1() {
		ApplicationContext ctx = 
				new FileSystemXmlApplicationContext(
						"file:src/main/webapp/WEB-INF/spring/root-context.xml");
		DataSource ds = (DataSource) ctx.getBean("dataSource");
		
		try {
			Connection con = ds.getConnection();
			System.out.println("연결 성공!");
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("연결 실패 ㅠㅠ");
			
		}
	}
}
