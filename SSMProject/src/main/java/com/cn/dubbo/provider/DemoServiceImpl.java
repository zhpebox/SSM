package com.cn.dubbo.provider;

public class DemoServiceImpl implements DemoService {

	public String sayHello(String name) {
		return "Hello Dobbo,Hello "+name;
	}

//	@Override
//	public String sayHello(String name) {
//		
//	}

}
