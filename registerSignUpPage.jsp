<%@page import="dao.SignUpPageDAO"%>
<jsp:useBean id="sup" class="bean.SignUpPage"></jsp:useBean>
<jsp:setProperty property="*" name="sup"/>

<%
int i=SignUpPageDAO.register(sup);
if(i>0){
%>
<jsp:include page="adminPage.jsp"></jsp:include>
<%}  %>