<%-- 
    Document   : sobre
    Created on : 2 de out de 2020, 14:28:12
    Author     : Ewerton

Deve haver uma página chamada "sobre.jsp" que mostre seu nome, 
número de matrícula (RA) e link do repositório pessoal no GitHub.
(10 pontos)
--%>

<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Disciplina pessoa = new Disciplina("Ewerton Luiz", 129048182, 6, "Materia", "ementa", 4, 10);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova p1 POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <h1>Prova POO</h1>
        <h1>Sobre</h1>
        <h2>Nome: <%= pessoa.getNomeAluno() %></h2>
        <h2>RA: <%= pessoa.getRa() %></h2>
        <h2>
            <a href="https://github.com/ewertonlimasouza"/>Link para meu GitHub</a>
        </h2>
    </body>
</html>
