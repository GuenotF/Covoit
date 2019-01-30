<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:template_base title="login">
  <jsp:attribute name="content">
  <div class="covoit-container">
      <div class="covoit-row-middle">
          <div class="covoit-login-top-left">
              <h1>Covoituator 3000</h1>
          </div>
          <div class="covoit-login-top-center">
              <img src="assets/src/ressources/icons8-nature-care-96.png" >
          </div>
          <div class="covoit-login-top-right">
              <h2>Bougez éco et social</h2>
          </div>
      </div>
  </div>
    <div class="covoit-container">
        <div class="covoit-row">
            <div class="covoit-login">
                <div class="covoit-login-content">
                    <form method="post" action="login" novalidate>
                        <img src="assets/src/ressources/icons8-contacts-96.png">
                        <h2>Se connecter</h2>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" class="form-control ${empty form.errors['email'] ? '' : 'is-invalid'}" value="<c:out value="${user.email}"/>" />
                            <span class="errors">${form.errors['email']}</span>
                        </div>
                        <div class="form-group">
                            <label for="password">Mot de passe</label>
                            <input type="password" id="password" class="form-control ${empty form.errors['password'] ? '' : 'is-invalid'}" name="password" value="" />
                            <span class="errors">${form.errors['password']}</span>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="remember-me"> Se souvenir
                            </label>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
                        </div>
                    </form>
                    <a href="#">Mot de passe oublié?</a>
                </div>
                <c:if test = "${form.results}">
                    <div class="form-errors">
                        <p class="${empty form.errors ? 'success' : 'error'}">${form.results}</p>
                    </div>
                </c:if>
            </div>
            <div class="covoit-login-list">
                <div class="covoit-login-list-content">
                    <div class="covoit-login-list-content-details">
                        <div class="covoit-row-middle">
                            <div class="covoit-login-list-card-left">
                                <div class="covoit-login-list-card-left-content">
                                    <strong>Votre collègue le plus proche</strong>
                                    <h3><a href="#">Partager votre trajet avec Aymeric</a></h3>
                                    <div>à 1800M</div>
                                    <p>Amateur de chevaux qui tachent? De musique Punk et de basses?</p>
                                    <a href="#">Voir plus</a>
                                </div>
                            </div>
                            <div class="covoit-login-list-card-right">
                                <img src="assets/src/ressources/avatar-male1.png" alt="Thumbnail [200x200]">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="covoit-login-list-content">
                    <div class="covoit-login-list-content-details">
                        <div class="covoit-row-middle">
                            <div class="covoit-login-list-card-left">
                                <div class="covoit-login-list-card-left-content">
                                    <strong>Notre second choix</strong>
                                    <h3><a href="#">Partager votre trajet avec Fabien</a></h3>
                                    <div>à 2400M</div>
                                    <p>Attention! Humour qui tâche!!!</p>
                                    <a href="#">Voir plus</a>
                                </div>
                            </div>
                            <div class="covoit-login-list-card-right">
                                <img src="assets/src/ressources/avatar-male2.png" alt="Thumbnail [200x200]">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="covoit-login-list-content">
                    <div class="covoit-login-list-content-details">
                        <div class="covoit-row-middle">
                            <div class="covoit-login-list-card-left">
                                <div class="covoit-login-list-card-left-content">
                                    <strong>Un peu plus loin...</strong>
                                    <h3><a href="#">Partager votre trajet avec Lyzzie</a></h3>
                                    <div>à 3600M</div>
                                    <p>Girl Power!</p>
                                    <a href="#">Voir plus</a>
                                </div>
                            </div>
                            <div class="covoit-login-list-card-right">
                                <img src="assets/src/ressources/avatar-female.png" alt="Thumbnail [200x200]">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
  </jsp:attribute>
</template:template_base>
