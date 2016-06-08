package com.cn.dubbo.provider;

//提供者和消费者都要提供这个Service
public interface DemoService {
	String sayHello(String name);
}
