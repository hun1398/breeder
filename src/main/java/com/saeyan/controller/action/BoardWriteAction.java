package com.saeyan.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.saeyan.dao.BoardDAO;
import com.saeyan.dto.BoardVO;

public class BoardWriteAction implements Action {

	
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			BoardVO bVo = new BoardVO();
				
				bVo.setName(request.getParameter("name"));
				bVo.setPass(request.getParameter("pass"));
				bVo.setEmail(request.getParameter("email"));
				bVo.setTitle(request.getParameter("title"));
				bVo.setContent(request.getParameter("content"));
				
				BoardDAO bDao = BoardDAO.getInstance();
				bDao.insertBoard(bVo);
				
				new BoardListAction().execute(request,response);
	}

}