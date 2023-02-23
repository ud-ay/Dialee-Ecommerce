<%@page import="dao.ShopRegistrationDAO"%>
<jsp:useBean id="shreg" class="bean.ShopRegistration"></jsp:useBean>
<jsp:setProperty property="*" name="shreg" />

<%
int i = ShopRegistrationDAO.registerShop(shreg);
if (i > 0) {
	request.getRequestDispatcher("adminPage.jsp").forward(request, response);

}
%>