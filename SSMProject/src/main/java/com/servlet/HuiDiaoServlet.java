package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class HuiDiaoServlet
 */
@WebServlet(description = "基于servlet3.0 用于测试 get监听", urlPatterns = {"/HuiDiaoServlet"},asyncSupported=true)
public class HuiDiaoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HuiDiaoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/event-stream");
		response.setCharacterEncoding("UTF-8");
		HashMap<String,Object> resultMap = new HashMap<String, Object>();
		resultMap.put("success", true);
		resultMap.put("data", "推送过来的数据");
		
		Gson gson = new Gson();
		String json = gson.toJson(resultMap);
		try(PrintWriter out = response.getWriter()){
			out.println("data: "+json);
			out.println();
			out.flush();
		}catch(Exception e){e.printStackTrace();}
		request.getParts();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
