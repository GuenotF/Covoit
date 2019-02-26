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

    <div class="row">
        <div class="col-12">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">
                      <img src="assets/src/ressources/icons8-nature-care-96.png" width="30" height="30" alt="">
                    Covoitator3000
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link active" href="homeloggedpassenger">Accueil <span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="profile">Profil</a>
                        <a class="nav-item nav-link" href="admin">Admin</a>
                        <a class="nav-item nav-link" href="#">Se déconnecter</a>
                    </div>
                </div>
            </nav>
        </div>a
    </div>



    <jsp:invoke fragment="content"></jsp:invoke>

</body>

</html>