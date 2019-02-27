<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:template_base title="profile">
  <jsp:attribute name="content">
    <html>
    <div id="page-top" class="d-flex justify-content-center align-items-center">
        <img src="assets/src/ressources/icons8-contact-details-100.png" >
        <p class="page-top-title">Gestion du profil</p>
    </div>
    <div class="container-fluid" id="page-profile">
        <p class="page-top-title">Bienvenue</p>
        <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8">
                <div class="covoit-home-list-content">
                    <div class="covoit-home-list-content-details">
                        <div class="covoit-row-middle">
                            <div class="col-sm-12 col-lg-9  p-4">
                                    <form class="d-flex justify-content-between pl-2 mt-2" action="profile">
                                        <div>
                                            <div class="form-inline">
                                                <div class="p-2">
                                                    <label style="font-size: large">Parlez nous de vous:</label>
                                                </div>
                                                <input type="text" style="width: 100%" class="form-control" name="comment">
                                            </div>
                                        </div>
                                        <div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" data-toggle="tooltip"
                                                       data-html="true" title="le tabac c'est taboo..." value="1" name="smoker">
                                                <img src="assets/src/ressources/smoking.png" style="height: 40px; width: 40px">
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" data-toggle="tooltip"
                                                       data-html="true" value="1" name="music"
                                                       title="Branchez la guitare, Entonnez le tambour, Moi, j'accorde ma basse, Un, deux, trois, quatre…">
                                                <img src="assets/src/ressources/music.png" style="height: 40px; width: 40px">
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" data-toggle="tooltip"
                                                       data-html="true" title="vous les aimez beaucoup (trop)!!!" value="1" name="pet">
                                                <img src="assets/src/ressources/pet.png" style="height: 40px; width: 40px">
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" data-toggle="tooltip"
                                                       data-html="true" title="blabla" value="1" name="bavard">
                                                <img src="assets/src/ressources/talk.png" style="height: 40px; width: 40px">
                                            </div>
                                        </div>
                                        <div>
                                            <button class="btn-primary">Soumettre</button>
                                        </div>
                                    </form>
                            </div>
                            <div>
                                <div class="covoit-home-list-card-right">
                                    <img src="assets/src/ressources/avatar.png" alt="Thumbnail [200x200]">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="covoit-profile-content">
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
                            <img src="assets/src/ressources/car-100.png">
                        </div>
                        <div class="d-flex justify-content-start form-group">
                            <input type="text" class="form-control">
                        </div>
                        <div class="d-flex justify-content-start">
                            <label>nombre de places:</label>
                        </div>
                        <div class="d-flex justify-content-start form-group">
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect1">
                                <option selected>Nombre de places disponibles</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="2">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select>
                        </div>
                    </div>
                    <div class="covoit-profile-content">
                        <div class="covoit-profile">
                            <div>
                                <img src="assets/src/ressources/schedule-100.png">
                            </div>
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect2">
                                <option selected>Créneau du matin</option>
                                <option value="1">06h - 07h</option>
                                <option value="2">07h - 08h</option>
                                <option value="2">08h - 09h</option>
                            </select>
                        </div>
                        <div class="covoit-profile" style="margin-top: 5%">
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <option selected>Créneau du soir</option>
                                <option value="1">16h - 17h</option>
                                <option value="2">17h - 18h</option>
                                <option value="2">18h - 19h</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
         </div>
        <div class="row">
            <div class="covoit-profile">

            </div>
        </div>

        <%--<div class="row">
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
                                    <img src="assets/src/ressources/smoking.png" style="height: 40px; width: 40px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="Branchez la guitare, Entonnez le tambour, Moi, j'accorde ma basse, Un, deux, trois, quatre…">
                                        <img src="assets/src/ressources/music.png" style="height: 40px; width: 40px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="vous les aimez beaucoup (trop)!!!">
                                        <img src="assets/src/ressources/pet.png" style="height: 40px; width: 40px">
                                    </div>
                                    <div class="form-check form-check-inline">
                                <input class="form-check-input" type="checkbox" data-toggle="tooltip" data-html="true" title="blabla">
                                        <img src="assets/src/ressources/talk.png" style="height: 40px; width: 40px">
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
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <option selected>Créneau du matin</option>
                                <option value="1">06h - 07h</option>
                                <option value="2">07h - 08h</option>
                                <option value="2">08h - 09h</option>
                            </select>
                        </div>
                        <div class="covoit-profile" style="margin-top: 5%">
                            <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
                                <option selected>Créneau du soir</option>
                                <option value="1">16h - 17h</option>
                                <option value="2">17h - 18h</option>
                                <option value="2">18h - 19h</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
    </div>
    </html>
  </jsp:attribute>
</template:template_base>

