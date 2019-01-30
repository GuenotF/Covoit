<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags" %>

<template:template_base title="index">
  <jsp:attribute name="content">
        <div id="welcome" class="container">
          <div class="row justify-content-center">
            <div class="col-sm-12 col-md-6 col-lg-6">
              <h1>Bienvenue Covoiturage 3000</h1>
              <a href="login">Je me connecte à l'application !</a>
            </div>
          </div>
        </div>
  </jsp:attribute>
</template:template_base>