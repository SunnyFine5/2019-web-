<%@ page import="javabean.BusinessBean"%>
<% 
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   
   //检查是否为空
   if(name==null||password==null)
	 response.sendRedirect("m-register.jsp");
   else{
	   BusinessBean businessBean=new BusinessBean();
	   boolean isValid=businessBean.valid(name, password);
	   out.print(isValid);
	   if(isValid){
		  session.setAttribute("name",name);
	       response.sendRedirect("m-menu.jsp");
	   }else response.sendRedirect("m-register.jsp");
	}
%>
