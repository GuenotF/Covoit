<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<template:template_base title="homeloggedconductor">
  <jsp:attribute name="content">
    <div class="covoit-container">
    </div>
    <div class="covoit-container" style="margin-top: 5%">
        <div id="page-top" class="d-flex justify-content-center align-items-center">
            <img src="assets/src/ressources/icons8-pickup-point-64.png" >
            <p class="page-top-title">Votre prochain trajet</p>
        </div>
        <div class="covoit-row">
            <div class="covoit-login">
                <div class="covoit-login-content" id="carte">
                    <div id="map" style="width: 100%; height: 300px;"></div>
                </div>
                <div>
                <ul class="nav nav-tabs">
                    <li><a href="homeloggedpassenger">Passager</a></li>
                    <li class="active"><a href="homeloggedconductor">Conducteur</a></li>
                </ul>
                </div>
                <div>
                    <form>
                        <div class="form-row align-items-center">
                            <div class="col-auto my-1">
                                <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Départ</label>
                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                    <option selected>Choisissez...</option>
                                    <option value="1">Votre position</option>
                                    <option value="2">Domicile</option>
                                </select>
                            </div>
                            <div class="col-auto my-1">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                    <label class="custom-control-label" for="customControlAutosizing">Par défaut</label>
                                </div>
                            </div>
                            <div class="col-auto my-1">
                                <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Arrivée</label>
                                <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                    <option selected>Choisissez...</option>
                                    <option value="1">Site 1</option>
                                    <option value="2">Site 2</option>
                                    <option value="2">Site 3</option>
                                </select>
                            </div>
                            <div class="col-auto my-1">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                    <label class="custom-control-label" for="customControlAutosizing">Par défaut</label>
                                </div>
                            </div>
                            <div class="col-auto my-1">
                                <button type="submit" class="btn btn-primary">Rechercher</button>
                            </div>
                        </div>
                    </form>
                </div>
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

