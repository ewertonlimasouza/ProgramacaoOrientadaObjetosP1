<%-- 
    Document   : index
    Created on : 2 de out de 2020, 14:24:20
    Author     : Home


O projeto deve ser ser hospedado num repositório do GitHub desde sua criação
e cada requisito deve gerar um commit.
(10 pontos)********

Deve haver uma página inicial inicial chamada "index.jsp" que mostre seu nome, 
número de matrícula (RA) e a quantidade de disciplinas matriculadas neste semestre 
(utilizando o getList() da classe Disciplina).
(10 pontos)


--%>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Disciplina pessoa = new Disciplina("Ewerton Luiz", 129048182, 7, "Materia", "ementa", 4, 10);
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
        <h1>Index</h1>
        <h2>Nome: <%= pessoa.getNomeAluno() %></h2>
        <h2>RA: <%= pessoa.getRa() %></h2>
        <h2>Quantidade de disciplina: <%= pessoa.getQtd() %></h2>
    </body>
</html>
