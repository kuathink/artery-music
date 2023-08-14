<%--
  Created by IntelliJ IDEA.
  User: 猫崽儿
  Date: 2023/6/2
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <form action="imageServlet" method="post" enctype="multipart/form-data">
            <label for="imgName">File Name:</label>
            <input type="text" name="imgName" id="imgName">
            <br/><br/>
            <label for="imgUrl">Select Image:</label>
            <input type="file" name="imgUrl" id="imgUrl">
            <br/><br/>
            <input type="submit" value="Upload">
        </form>
        <%--        <c:forEach var="image" items="${images}">--%>
        <%--            <h3>${image.imgName}</h3>--%>
        <%--            <img src="data:image/png;base64,${fn:escapeXml(base64:encodeBase64String(image.imgUrl))}" />--%>
        <%--        </c:forEach>--%>
    </body>
</html>
