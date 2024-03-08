<%@page import="bean.Khachhangbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Lichsubean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
 <%Giohangbo h = (Giohangbo)session.getAttribute("gh"); %>

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="HthicayController">Trang chủ</a>
    </div>
     <button class="navbar-toggler navbar-right" style = "float: right" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
     <ul class="nav navbar-nav">
      <% if(h!=null) { %>
      <li><a class="dropdown-toggle nav-link" href="htgioController">Giỏ hàng <span class="badge bg-warning"><%=h.ds.size()%></span>
</a>
     <%} else { %>
     <li><a href="htgioController" class="dropdown-toggle nav-link">Giỏ hàng <span class="badge bg-warning"></span>
</a>
     <%} %>
      </li>
      <li><a class ="nav-link" href="xacnhanController">Xác nhận đã mua</a></li>
            <li><a class ="nav-link" href="LichsuController">Lịch sử mua hàng</a></li>

    </ul>
    
    <form action="HthicayController" method="post" style = "display: flex; margin-left: 100px">
				<input style = "display: inline-block" type="text" name ="txttim" class="form-control" placeholder="Nhap ten cay"> <br>
				
				<input style = "display: inline-block; border-radius: 4px; border: none; margin-left: 20px" type="submit" name="but1" class="btn-primary" value="search">
				
			</form>
			<%Khachhangbean kh = (Khachhangbean)session.getAttribute("un"); %>
    <ul class="nav navbar-nav ms-auto">
      <%if(session.getAttribute("un")!=null) {%>
      <li><a class = "nav-link" href = "" style ="line-height: 24px">Xin chao: <%=kh.getTenkh() %></a></li>
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
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
    </ul>
  </div>
  
    </div>
   
</nav>

<table class ="table">
	<tr>
		<th>	Ma Sach:	</th>
		<th>	Ten Sach:	</th>
		<th>	So Luong Mua:	</th>
		<th>	Ngay Mua:	</th>
 		<th>	Gia:	</th>
		<th>	Da Mua:	</th>
		<th>	Thanh Tien:	</th>
		<th>	Ma Khach Hang:	</th>
		
		</tr>
	<%

		ArrayList<Lichsubean> ds =(ArrayList<Lichsubean>)request.getAttribute("dslichsu"); 
		int n = ds.size();
		 long makh = (long)session.getAttribute("makh"); 

		for(int i = 0; i<n; i++ ){
		
			Lichsubean s =ds.get(i);
 			
			%>
			<tr>
			<% if(s.getMakh()==makh){ %> 
				<td><%=s.getMacay() %></td>
				<td><%=s.getTencay() %></td>
				<td><%=s.getSoluongmua() %></td>
				<td><%=s.getNgaymua() %></td>
				<td><%=s.getGia() %></td>
				<td><%=s.isDamua() %></td>
				<td><%=s.getThanhtien() %></td>
				<td><%=s.getMakh() %></td>
				</tr>
				<%} %>
				<% }%>  
 		</table>
</body>
</html>