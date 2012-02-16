

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String x = request.getParameter("name");
    String y = request.getParameter("email");
    if (x != null && y != null) {
        session.setAttribute("sessname", x);
        session.setAttribute("sessemail", y);
    }
%>
<head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Shopping Cart </title>
</head>
<body>
    <h1>Shopping Cart</h1>

    <p>You have successfully logged in.</p>
    <p>Your name is:<%out.print(session.getAttribute("sessname"));%></p>
    <p>Your email is:<%out.print(session.getAttribute("sessemail"));%></p>
    
    
    <jsp:useBean id= "Total" class="product.TotalPrice" scope="session"/>
    
    <jsp:useBean id= "Cafe"  class="product.Item" scope="session"/>
    <c:set target="${Cafe}" property="name" value="Cafe"/>            
    <c:set target="${Cafe}" property="price" value="18.5"/>
    
    <jsp:useBean id= "Sugar"  class="product.Item" scope="session"/>
    <c:set target="${Sugar}" property="name" value="Sugar"/>
    <c:set target="${Sugar}" property="price" value="6.95" />
    
    <jsp:useBean id= "Water"  class="product.Item" scope="session"/>
    <c:set target="${Water}" property="name" value="Water"/>
    <c:set target="${Water}" property="price" value="1.29"/>


    <form action="index.jsp" method="POST" >
        <table border="2">

            <thead>
                <tr>
                    <th>Product </th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>

                <tr>
                    <td>${Cafe.name}</td>
                    <td>${Cafe.price}</td>
                    <jsp:setProperty name="Cafe" property="quantity" param="quantity"/>
                    <td><input type="text" name="quantity" value="<jsp:getProperty name="Cafe" property="quantity"/>" /></td>
                        <jsp:setProperty name="Cafe" property="quantity" param="quantity"/>
                    <td>${Cafe.sum}</td>
                </tr>
                <tr>

                    <td>${Sugar.name}</td>
                    <td>${Sugar.price}</td>
                    <jsp:setProperty name="Sugar" property="quantity" param="quantity2"/>
                    <td><input type="text" name="quantity2" value="<jsp:getProperty name="Sugar" property="quantity"/>" /></td>
                        <jsp:setProperty name="Sugar" property="quantity" param="quantity2"/>
                    <td>${Sugar.sum}</td>
                </tr>
                <tr>
                    <td>${Water.name}</td>
                    <td>${Water.price}</td>
                    <jsp:setProperty name="Water" property="quantity" param="quantity3"/>
                    <td><input type="text" name="quantity3" value="<jsp:getProperty name="Water" property="quantity"/>" /></td>
                        <jsp:setProperty name="Water" property="quantity" param="quantity3"/>
                    <td>${Water.sum}</td>
                </tr>
            </tbody>
        </table>
        <button type="submit" onclick="<c:set target="${Total}" property="total" value="${Cafe.sum+Sugar.sum+Water.sum}"/>
                ">Add to Cart</button>
        <table border="2">

            <thead>            
                <tr>
                    <td>Total</td>
                    <c:set target="${Total}" property="total" value="${Cafe.sum+Sugar.sum+Water.sum}"/>
                    <td>${Total.total}</td>
                </tr>
                </tbody>
        </table>
    </form>  
    <button type="button" ONCLICK="window.location.href='report.html'">Report</button>
    <button type="button" ONCLICK="window.location.href='Project4.rar'">Code</button>
</body>