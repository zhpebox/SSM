package com.cn.hnust.service;

import java.util.List;

import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.User;

public interface IUserService {
	
  public User getUserById(int userId);
  
  public List<Book> getBooksByName(String name);
  
}