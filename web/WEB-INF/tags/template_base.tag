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
                        <a class="nav-item nav-link active" href="homeloggedpassenger">Home <span class="sr-only">(current)</span></a>
                        <a class="nav-item nav-link" href="profile">Profil</a>
                        <a class="nav-item nav-link" href="#">Se déconnecter</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>

    <jsp:invoke fragment="content"></jsp:invoke>

</body>

</html>