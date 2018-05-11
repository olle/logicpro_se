package com.studiomediatech.logicpro.client;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ClientAjax extends HttpServlet {
	private static final long serialVersionUID = 6891837882425910121L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doGet(req, resp);
		PrintWriter writer = resp.getWriter();
		writer.println("Hello World!");
		writer.close();
	}
}