<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Currency" %>
<%@ page import="bean.Customer" %><%--
  Created by IntelliJ IDEA.
  User: nguyenthanhlinh
  Date: 5/2/18
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display List Customer</title>
</head>
<body>
<%
    ArrayList<Customer> customer = new ArrayList<>();
    customer.add(new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi", "1.jpg"));
    customer.add(new Customer("Nguyen Van Nam", "1983-08-21", "Bac Giang", "2.jpg"));
    customer.add(new Customer("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh", "3.jpg"));
    customer.add(new Customer("Tran Dang Khoa", "1983-08-07", "Ha Tay", "4.jpg"));
    customer.add(new Customer("Nguyen Dinh Thi", "1983-08-19", "Ha Noi", "5.jpg"));
    request.setAttribute("customer", customer);
%>
<h1>List Customer</h1>
<table border="1">
    <tr>
        <th>Name</th>
        <th>BornDate</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    <c:forEach var="i" begin="0" end="${customer.size() - 1}">
        <tr>
            <td><c:out value="${customer[i].getName()}"/></td>
            <td><c:out value="${customer[i].getBornDate()}"/></td>
            <td><c:out value="${customer[i].getAddress()}"/></td>
            <td><img width="50px" height="50px" src="image/<c:out value="${customer[i].getImage()}"/>"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
