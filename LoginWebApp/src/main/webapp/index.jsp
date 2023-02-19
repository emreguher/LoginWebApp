<%@page import="models.Kullanici"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Sayfası</title>
</head>
<body>
	<h2>Login:</h2>
	<form method="post">
		<label for="kullaniciAdi">Kullanıcı Adı :</label> <input type="text"
			id="kullaniciAdi" name="kullaniciAdi"><br> <label
			for="sifre">Şifre :</label> <input type="password" id="sifre"
			name="sifre"> <br>
		<button type="submit" name="submit">Sunucuya Gönder</button>
		<button type="reset">Temizle</button>
	</form>
	<%
	// java code
	Kullanici k = null;
	String msg = "";
	
	// HTML formdan java kodu içine değerler gönderdik
	if ("POST".equalsIgnoreCase(request.getMethod()) && 
	request.getParameter("submit") != null) {
		k = new Kullanici(request.getParameter("kullaniciAdi"), request.getParameter("sifre"));

		System.out.println(k);
	}
	
	if(k != null 
	&& "ali".equals(k.getKullaniciAdi()) 
	&& "123".equals(k.getSifre())){
		msg = "Hoşgeldin Ali";
	}else{
		msg = "Kullanıcı adı ve/veya şifre hatalı";
	}
	%>
	<!-- Java içinden HTML etiketleri arasına değer yazdık -->
	<span style="color:red"><%out.print(msg); %></span>
</body>
</html>