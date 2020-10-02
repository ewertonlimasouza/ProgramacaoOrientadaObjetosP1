<%-- 
    Document   : disciplina
    Created on : 2 de out de 2020, 14:29:39
    Author     : Ewerton

Deve haver uma página chamada "disciplinas.jsp" que mostre a tabela de 
disciplinas cursadas por você neste semestre (invocando o método getList() da 
classe Disciplina) e que em cada linha da tabela haja um campo (input) para (re)definir 
a nota da disciplina.
(25 pontos)
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<Disciplina>disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    if(disciplinaList == null){
    disciplinaList = new ArrayList<>();
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "Programação orientada a objetos", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "Sistemas operacionais 2", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "Sistema da informação", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "Engenharia de Soft 3", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "ingles 3", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "ingles 4", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Ewerton Luiz", 12345678, 6, "Seguraça da informação", "ementa", 4, 10));
    application.setAttribute("disciplinaList", disciplinaList);
    }
    if(request.getParameter("troca")!=null){
    int i = Integer.parseInt(request.getParameter("i"));
    Disciplina alt = disciplinaList.get(i);
    try{
    alt.setNota(Double.parseDouble(request.getParameter("novanota")));
    }catch (Exception ex){
    alt.setNota(0.0);
    }
    response.sendRedirect(request.getRequestURI());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <h1>Prova de POO</h1>
        <hr/>
        <table border="1">
            <hr/>
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>ciclo</th>
                <th>Nota</th>
                <th>Editar</th>
            </tr>
            <%for(int i=0; i<disciplinaList.size(); i++){%>
            <tr>
                <td><%=i + 1 %></td>
                <% Disciplina u = disciplinaList.get(i);%>
                <td><%= u.getNome()%></td>
                <td><%= u.getEmenta()%></td>
                <td><%= u.getNota()%></td>
                <td>
                    <form>
                        <input type="text" name="novanota"/>
                        <input type="hidden" name="i" value="<%= i %>"/>
                        <input type="submit" name="troca" value="Salvar"/>                    
                    </form>
                </td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
