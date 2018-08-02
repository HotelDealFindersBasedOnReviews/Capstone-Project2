<%@page contentType="text/html" pageEncoding="windows-1252"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Prices Page</title>
    </head>
    <body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/accounts"
        user="root" password="admin123"
    />
     
    <sql:query var="prices"   dataSource="${myDS}">
        SELECT * FROM prices;
    </sql:query>
        
    <div align="center">
        <table border='1' cellpadding="5">
            <caption><h2>List of Hotels</h2></caption>
            <tr>
                <th>Hotel Name</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Website 1</th>
                <th>Price 1</th>
                <th>Website 2</th>
                <th>Price 2</th>
                <th>Website 3</th>
                <th>Price 3</th>
            </tr>
            <c:forEach var="price" items="${prices.rows}">
                <tr>
                    <td><c:out value="${price.Hotel}" /></td>
                    <td><c:out value="${price.Address}" /></td>
                    <td><c:out value="${price.Phonenumber}" /></td>
                    <td><c:out value="${price.website1}" /></td>
                    <td><c:out value="${price.price1}" /></td>
                    <td><c:out value="${price.website2}" /></td>
                    <td><c:out value="${price.price2}" /></td>
                    <td><c:out value="${price.website3}" /></td>
                    <td><c:out value="${price.price3}" /></td>>
                </tr>
            </c:forEach>
        </table>
    </div>
        <br/>
        <br>
        <br>
        
        <center>
        <button class="btn btn-lg btn-primary btn-block" > <a href="login" > <span style="text-decoration: none">Logout</span> </a></button>
        </center>
    </body>
</html>
