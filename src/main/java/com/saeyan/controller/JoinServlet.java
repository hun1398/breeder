package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.saeyan.dao.MemberDAO;
import com.saeyan.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("Login.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String userid=request.getParameter("userid");
		String pwd=request.getParameter("pwd");
		
		MemberVO mVo=new MemberVO();
		mVo.setName(name);
		mVo.setAge(age);
		mVo.setUserid(userid);
		mVo.setPwd(pwd);
		
		MemberDAO mDao=MemberDAO.getInstance();
		int result=mDao.insertMember(mVo);
		
		HttpSession session=request.getSession();
		if(result==1) {
			session.setAttribute("userid", mVo.getUserid());
			
		}
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("Login.jsp");
		dispatcher.forward(request, response);
	
	}

}
