<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<template:template_base title="home">
  <jsp:attribute name="content">
    <div id="page-top" class="d-flex justify-content-center align-items-center">
      <img src="assets/src/ressources/icons8-system-administrator-female-100.png" >
      <p class="page-top-title">Interface d'administration</p>
    </div>
    <div class="container" id="page-home">
          <div class="row">

            <div class="col-4">
              <button class="btn btn-lg btn-primary btn-block" type="submit" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Ajouter un utilisateur </button>
              <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Informations</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <form method="POST" action="home">
                        <div class="form-group">
                          <label for="recipient-prenom" class="col-form-label">Prénom:</label>
                          <input type="text" name="firstName" class="form-control" id="recipient-prenom">
                        </div>
                        <div class="form-group">
                          <label for="recipient-nom" class="col-form-label">Nom:</label>
                          <input name="lastName" type="text" class="form-control" id="recipient-nom">
                        </div>
                        <div class="form-group">
                          <label for="recipient-email" class="col-form-label">eMail:</label>
                          <input name="email" type="text" class="form-control" id="recipient-email">
                        </div>
                        <div class="form-group">
                          <label for="recipient-mdptmp" class="col-form-label">Mot de passe temporaire:</label>
                          <input name="password" type="password" class="form-control" id="recipient-mdptmp">
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                          <button type="submit" class="btn btn-primary">Enregistrer</button>
                        </div>
                      </form>
                    </div>

                  </div>
                </div>
              </div>
              <br>
              <button class="btn btn-lg btn-primary btn-block" type="submit">Supprimer un utilisateur</button>
              <br>
              <button class="btn btn-lg btn-primary btn-block" type="submit">Récupération mdp</button>
            </div>
            <div class="col-2">
            </div>
            <div class="col-5">
              <table class="table table-striped">
                <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Prénom</th>
                  <th scope="col">Nom</th>
                  <th scope="col">eMail</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope['UsrList']}" var="user">

                  <tr>
                    <td scope="row">${user.value.getId()}</td>
                    <td scope="row">${user.value.getFirstName()}</td>
                    <td scope="row">${user.value.getLastName()}</td>
                    <td scope="row">${user.value.getEmail()}</td>
                  </tr>

                </c:forEach>
                <tr>
                  <th scope="row">1</th>

                </tr>
                <tr>
                  <th scope="row">2</th>

                </tr>
                <tr>
                  <th scope="row">3</th>

                </tr>
                </tbody>
              </table>
            </div>
            <div class="col-1">
            </div>

          </div>
    </div>

  </jsp:attribute>
</template:template_base>

