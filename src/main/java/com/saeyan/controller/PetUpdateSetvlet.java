package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import com.saeyan.dao.PetDAO;
import com.saeyan.dto.PetVO;


@WebServlet("/petUpdate.do")
public class PetUpdateSetvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name =request.getParameter("name");
		
		PetDAO pDao = PetDAO.getInstance();
		PetVO pVo = pDao.selectPetByname(name);
		
		request.setAttribute("pet", pVo);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("petpage.jsp");
		dispatcher.forward(request, response);
	}
}
