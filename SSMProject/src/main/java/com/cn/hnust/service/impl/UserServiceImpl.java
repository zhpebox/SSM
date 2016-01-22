package com.cn.hnust.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.hnust.dao.IBookDao;
import com.cn.hnust.dao.IUserDao;
import com.cn.hnust.pojo.Book;
import com.cn.hnust.pojo.User;
import com.cn.hnust.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
  @Resource
  private IUserDao userDao;
  @Resource
  private IBookDao bookDao;
  
  @Override
  public User getUserById(int userId) {
    // TODO Auto-generated method stub
    return this.userDao.selectByPrimaryKey(userId+"");
  }
@Override
public List<Book> getBooksByName(String name) {
	// TODO Auto-generated method stub
	return bookDao.queryBookbyBookName(name);
}

}