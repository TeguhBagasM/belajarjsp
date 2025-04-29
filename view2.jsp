<%-- baris ini diperlukan supaya halaman ini bisa menggunkan JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menggunakan JSTL + EL</title>
    </head>
    <body>
        <h1>Detail Siswa</h1>
        
        <h2>Data Siswa</h2>
        <c:if test="${siswa != null}">
            <p>ID: ${siswa.id}</p>
            <p>Nama: ${siswa.nama}</p>
            <p>Nilai: ${nilai}</p>
        </c:if>
        <c:if test="${siswa == null}">
            <p>Data siswa tidak tersedia</p>
        </c:if>
        
        <h2>Daftar Semua Siswa</h2>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nama</th>
            </tr>
            <c:forEach var="row" items="${daftarsiswa}">
                <tr>
                    <td>${row.id}</td>
                    <td>${row.nama}</td>
                </tr>
            </c:forEach>
        </table>
        
        <br/>
        Sebelum dirubah:<br>
        ${nilai}<br>
        <c:set var="nilai" value="100" />
        Sesudah dirubah:<br>
        ${nilai}<br>
    </body>
</html>