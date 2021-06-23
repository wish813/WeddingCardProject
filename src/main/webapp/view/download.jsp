<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.awt.image.BufferedImageFilter"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
    String path = request.getParameter("path");
    String file_name = request.getParameter("file_name");
    String realPath = request.getServletContext().getRealPath("/"+path);
    response.setContentType("application/x-msdownload");
    response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(file_name,"utf-8"));
    
    File file = new File(realPath+"/"+new String(file_name.getBytes("utf-8")));
    int b;
    FileInputStream fis = null;
    BufferedInputStream bis = null;
    BufferedOutputStream bos = null;
    try{
    	fis = new FileInputStream(file);
    	bis = new BufferedInputStream(fis);
    	bos = new BufferedOutputStream(response.getOutputStream());
    	while((b=bis.read())!= -1){
    		bos.write(b);
    		bos.flush();
    	}
    	out.clear();
    	out = pageContext.pushBody();
    }catch(Exception e){
    	System.out.println(e);
    }finally{
    	try{
    		bos.close();
    		bis.close();
    		fis.close();
	   	}catch(Exception e){
    	}
    }
%>