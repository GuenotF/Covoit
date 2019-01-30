<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>
    <link rel="stylesheet" href="assets/dist/styles/main.css">
    <script type="text/javascript" src="assets/dist/scripts/main.js"></script>
</head>

<body style="background-image: url('assets/src/ressources/OGA1EQ0.jpg')">

    <jsp:invoke fragment="content"></jsp:invoke>

</body>

</html>