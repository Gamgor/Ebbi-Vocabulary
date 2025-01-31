<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/start-size.css">
    <title>Ebbi-Vocabularies</title>
</head>
<body>
    <div class = "main">

        <div class="header">

            <div class="logo">
                <h1>Ebbi-Vocabularies</h1>
            </div>


            <div class="mebubar">
                <ul class="menu">
                    <li><a href="profile">Your Profile</a></li>
                    <li><a href="logout">Log out</a></li>
                </ul>
            </div>

        </div>

        <div class="site_content">

            <div class="actions">
                <ul>
                    <li><a href="vocabularies">My vocabularies</a></li>
                    <li><a href="repeat">Vocabularies for repeat</a></li>
                    <li><a href="create/vocabulary">Create new vocabulary</a></li>

                </ul>

            </div>

            <div class="find">
                <form action="find" method="POST" id="search_form">
                    <input type="search" name="vocabulary-name" placeholder="Vocabulary's name">
                    <input type="submit" class="btn" value="Find">
                    <p class="message">${message}</p>
                </form>
                <p class="vocabulary-list">
                    <c:forEach items="${vocabularies}" var="vocabulary">
                        <a href="/MyFirstOwnProject-1.0/vocabulary?id=<c:out value='${vocabulary.id}' />">
                            <c:out value="${vocabulary.name}" />
                        </a>
                        <br>
                    </c:forEach>
                </p>
            </div>

            <div class="about">
                <p>Have you ever noticed that you can’t remember a word which you’ve already learned before? I can assure you that this is a common situation. The problem is that you learn and, most importantly, repeat words incorrectly.
                   </br> German psychologist Hermann Ebbinghaus wanted to understand more about why we forget things and how to prevent it. You can find more information about him and his theory on the Internet by yourself.
                   According to his research, we must repeat information with the following periodicity:</p>
                <img src="${pageContext.request.contextPath}/images/curve.png">
                <p>
                    This website was made to help you learn words using this theory.
                    You only have to create your vocabularies with new words and then check the tab “Vocabularies for repeat”.
                    When the time comes, there will be dictionaries that you must repeat.
                </p>
            </div>
        </div>
    </div>
</body>
</html>