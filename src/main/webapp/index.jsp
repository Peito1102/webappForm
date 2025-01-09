<%@page contentType="text/html" pageEncoding="UTF8"%>
<%@page import="java.util.List"%>
<%
 List<String> errores = (List<String>)request.getAttribute("errores");
 %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de usuarios</title>
</head>
<body>
    <h3>Formulario de usuarios</h3>
<%
 if(errores != null && errores.size()> 0){%>
     <ul>
        <% for(String error: errores) { %>
            <li><%=error%></li>
        <% } %>
     </ul>
 <% } %>

    <form action="/webappForm/registro" method="post">
        <div>
            <label for="username">Usuario</label>
            <div><input type="text" name="username" id="username"></div>
        </div>
        <div>
            <label for="password">Password</label>
            <div><input type="password" name="password" id="password"></div>
        </div>
        <div>
            <label for="email">Email</label>
            <div><input type="text" name="email" id="email"></div>
        </div>
        <div>
            <label for="pais">País</label>
            <div>
                <select name="pais" id="pais">
                    <option value="">-- seleccionar --</option>
                    <option value="ES">España</option>
                    <option value="MX">Mexico</option>
                    <option value="CL">Chile</option>
                    <option value="AR">Argentina</option>
                    <option value="PE" selected>Perú</option>
                    <option value="CO">Colombia</option>
                    <option value="VE">Venezuela</option>
                </select>
            </div>
        </div>
        <div>
            <label for="lenguajes">Lenguajes de programación</label>
            <div>
                <select name="lenguajes" id="lenguajes" multiple>
                    <option value="java">Java</option>
                    <option value="jakartaee" selected>Jakarta EE9</option>
                    <option value="spring">Spring Boot</option>
                    <option value="js">Java Script</option>
                    <option value="angular" selected>Angular</option>
                    <option value="react">React</option>
                </select>
            </div>
        </div>
        <div>
            <label>Roles</label>
            <div>
                <input type="checkbox" name="roles" value="ROLE_ADMIN">
                <label>Administrador</label>
            </div>
            <div>
                <input type="checkbox" name="roles" value="ROLE_USER" checked>
                <label>Usuario</label>
            </div>
            <div>
                <input type="checkbox" name="roles" value="ROLE_MODERATOR">
                <label>Moderador</label>
            </div>
        </div>
        <div>
            <label>Idiomas</label>
            <div>
                <input type="radio" name="idioma" value="es">
                <label>Español</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="en">
                <label>Inglés</label>
            </div>
            <div>
                <input type="radio" name="idioma" value="fr">
                <label>Francés</label>
            </div>
        </div>
        <div>
            <label for="habilitar">Habilitar</label>
            <div>
                <input type="checkbox" name="habilitar" id="habilitar" checked>
            </div>
        </div>
        <input type="hidden" name="secreto" value="12345">
        <div>
            <div>
                <input type="submit" value="Registrar">
            </div>
        </div>
    </form>
</body>
</html>