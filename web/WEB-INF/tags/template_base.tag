<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" rtexprvalue="true" %>
<%@ attribute name="content" fragment="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>${title}</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.4.0/dist/leaflet.css"
          integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA=="
          crossorigin=""/>

    <script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"
            integrity="sha512-QVftwZFqvtRNi0ZyCtsznlKSWOStnDORoefr1enyq5mVL4tmKB3S/EnC3rRJcxCPavG10IcrVGSmPh6Qw5lwrg=="
            crossorigin=""></script>
    <link rel="stylesheet" href="assets/dist/styles/main.css">
    <script type="text/javascript" src="assets/dist/scripts/main.js"></script>

</head>

<body style="background-image: url('assets/src/ressources/OGA1EQ0.jpg')">
<div id="map" style="width: 50%; height: 600px;"></div>

    <jsp:invoke fragment="content"></jsp:invoke>

</body>

</html>