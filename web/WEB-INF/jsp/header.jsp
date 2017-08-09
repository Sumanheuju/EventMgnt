<%-- 
    Document   : header
    Created on : Apr 11, 2017, 8:35:34 PM
    Author     : sumanheuju
--%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <title>Event Mgnt !!</title>
        <link href="${SITE_URL}/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--                <link href="${SITE_URL}/static/css/style123.css" rel="stylesheet" type="text/css" media="all" />-->
        <link href="${SITE_URL}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <!-- web-font -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,300,700,800,400,600' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Merriweather:400,700italic,400italic,300,900,700,900italic,300italic' rel='stylesheet' type='text/css'>
        <!-- web-font -->
        <!-- js -->
        <script src="${SITE_URL}/static/js/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- js -->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="${SITE_URL}/static/js/move-top.js"></script>
        <script type="text/javascript" src="${SITE_URL}/static/js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- banner Slider starts Here -->
        <script src="${SITE_URL}/static/js/responsiveslides.min.js"></script>
        <!-- start-smoth-scrolling -->

    </head>
    <body>
