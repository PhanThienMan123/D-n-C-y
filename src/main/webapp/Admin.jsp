<%@page import="bean.xacnhanbean"%>
<%@page import="bean.Giohangbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="dao.Caydao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.Loaibo"%>
 

<%@page import="bo.Caybo"%>
<%@page import="bean.Loaibean"%>

<%@page import="bean.Caybean"%>

<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>WEB Quan Ly Cay Canh</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  
</head>
<body>
  <%ArrayList<Giohangbean> h = (ArrayList<Giohangbean>)session.getAttribute("dsgio"); %>

<nav class="navbar navbar-expand-sm bg-light navbar-light">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="AdminLoaiController">Quản lý loại</a>
    </div>
     <button class="navbar-toggler navbar-right" style = "float: right" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
     <ul class="nav navbar-nav">
      
    
    
     <li><a href="AdminsachController" class="dropdown-toggle nav-link">Quản lý sách <span class="badge bg-warning"></span>
</a>
    
      </li>
      <li><a class ="nav-link" href="AdminController">Xac nhan hoan don</a></li>
            <li><a class ="nav-link" href="admindanhsachController">Danh sach da chuyen tien</a></li>

    </ul>
    
    <form action="HthicayController" method="post" style = "display: flex; margin-left: 100px">
				<input style = "display: inline-block" type="text" name ="txttim" class="form-control" placeholder="Nhap ten sach can tim"> <br>
				
				<input style = "display: inline-block; border-radius: 4px; border: none; margin-left: 20px" type="submit" name="but1" class="btn-primary" value="search">
				
			</form>
			
    <ul class="nav navbar-nav ms-auto">
      <%if(session.getAttribute("un")!=null) {%>
      <li><a class = "nav-link" href = "" style ="line-height: 24px">Xin chao: <%=session.getAttribute("tendn") %></a></li>
          	   <li ><a class ="nav-link" href="LogoutController"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
      
      <%} else{%>
      <li class ="nav-item"><a data-bs-toggle="modal" data-bs-target="#myModal" class = "nav-link btn btn-success">
    Đăng nhập
  </a></li>
        <li><a data-bs-toggle = "modal" data-bs-target="#myModal1" class ="nav-link btn btn-success"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
  
    	<% }%>
 
          
	
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Dang nhap</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form method = "POST" action = "LoginController">
    <div class="form-group" style = "width: 100%;">
Un: <input type='text' name='t1' class="form-control" placeholder="Nhap username"><br>
Pass: <input type='password' name='txtpass' class="form-control"><br>
 <input type="submit" name="b1" class="text" value="login"> <br>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
   
</form>
</div>
   
  
    </div>
    
    <div class="modal" id="myModal1">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Dang Ky</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        <form method = "POST" action = "DangkyController">
    <div class="form-group" style = "width: 100%;">
Un: <input type='text' name='t2' class="form-control" placeholder="Nhap username"><br>
Pass: <input type='password' name='txtpass2' class="form-control"><br>
Email: <input type='text' name='email' class="form-control" placeholder="Nhap email"><br>
Hoten: <input type='text' name='ht' class="form-control" placeholder="Nhap ho ten"><br>
SDT: <input type='text' name='sdt' class="form-control" placeholder="Nhap so dien thoai"><br>
Dia chi: <input type='text' name='dc' class="form-control" placeholder="Nhap dia chi"><br>




 <input type="submit" name="b1" class="text" value="Dang ky"> <br>
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
   
</form>
</div>
  
</nav>


	

 <table style = "width: 100%;">
 
<tr>
	<td width= 200px valign="top"> Danh sach</td>
	<table class="table table-hover">
 	<% ArrayList<xacnhanbean> dshoadon =(ArrayList<xacnhanbean>)request.getAttribute("dshoadon");
			for(xacnhanbean hoadon: dshoadon){
		%>
		<tr>

		<td><%=hoadon.getTenkh()%></td>
		<td><%=hoadon.getTencay()%></td>
		<td><%=hoadon.getSoluongmua()%></td>
		<td><%=hoadon.getGia()%></td>
		<td><%=hoadon.getThanhtien()%></td>
		<td><%=hoadon.getNgaymua()%></td>
		<td> <a href = "AdminController?mact=<%=hoadon.getMachitietHD()%>">Xac nhan </a></td>
		</tr>	
		<%} %> 
	</table>
	
	</td>


</table> 

	
	


</body>
</html>