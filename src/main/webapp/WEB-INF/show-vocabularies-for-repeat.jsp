<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>

<body>
<div class ="main">
    <p>${login}</p>
    <div>
       <table>
         <c:forEach items="${vocabularies}" var="vocabulary">

            <tr>
             <td>
              <p>
                <c:out value="${vocabulary.name}" />
                <c:out value="${vocabulary.id}" />

                <input type="button" value="Vocabulary is repeated2"
                onclick="window.location.href = 'http://localhost:8080/MyFirstOwnProject-1.0/repeat?id=${vocabulary.id}'"
                class="cancel_button">

              </p>
             </td>
            </tr>


         </c:forEach>
       </table>
    </div>

</div>
</body>
</html>