package com.cn.hnust.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.cn.hnust.pojo.Book;

public interface IBookDao {
	
	@Select("select * from tbook where bookName = #{0}")
	public List<Book> queryBookbyBookName(String bookName);
}
