<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:template_base title="profile">
  <jsp:attribute name="content">
    <html>
    <div id="page-top" class="d-flex justify-content-center align-items-center">
        <img src="assets/src/ressources/icons8-contact-details-100.png" >
        <p class="page-top-title">Gestion du profil</p>
    </div>
    <div class="container" id="page-profile">
        <p class="page-top-title">    Bienvenue Toto</p>
        <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8">
                <div class="covoit-container">
                    <div class="covoit-row">
                        <div class="covoit-profile">
                            <div class="covoit-profile-content">
                                <div class="d-flex justify-content-start">
                                <label style="font-size: large">Parlez nous de vous:</label>
                                </div>
                                <div class="d-flex justify-content-start form-group">
                                <input type="text" class="form-control">
                                </div>
                                <div class="d-flex justify-content-start form-group">
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="le tabac c'est taboo...">
                                    <img src="assets/src/ressources/smoking.png" style="height: 25px; width: 25px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="Branchez la guitare, Entonnez le tambour, Moi, j'accorde ma basse, Un, deux, trois, quatre…">
                                        <img src="assets/src/ressources/music.png" style="height: 25px; width: 25px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="vous les aimez beaucoup (trop)!!!">
                                        <img src="assets/src/ressources/pet.png" style="height: 25px; width: 25px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="blabla">
                                        <img src="assets/src/ressources/talk.png" style="height: 25px; width: 25px">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="covoit-profile">
                            <div class="covoit-profile-content">
                                <label>Adresse du domicile:</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="covoit-profile">
                            <div class="covoit-profile-content">
                                <label>Adresse professionnelle:</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4">
                <div class="covoit-profile">
                    <div class="covoit-profile-content">
                        <div class="d-flex justify-content-start">
                            <label>Véhicule:</label>
                        </div>
                        <div class="d-flex justify-content-start form-group">
                            <input type="text" class="form-control">
                        </div>
                        <div class="d-flex justify-content-start">
                            <label>nombre de places:</label>
                        </div>
                        <div class="d-flex justify-content-start form-group">
                            <input type="text" class="form-control">
                        </div>

                        <div class="covoit-profile">
                            <div class="covoit-profile-content">
                                <label>créneau horaire du matin:</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>
                        <div class="covoit-profile">
                            <div class="covoit-profile-content">
                                <label>créneau horaire du soir:</label>
                                <input type="text" class="form-control">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </html>
  </jsp:attribute>
</template:template_base>

