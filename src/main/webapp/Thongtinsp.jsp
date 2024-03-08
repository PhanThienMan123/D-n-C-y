<%@page import="bo.Giohangbo"%>
<%@page import="bean.Loaibean"%>
<%@page import="bean.Caybean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="bean.Khachhangbean"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Web Bán Cây</title>
    
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <style>
	* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
/* body {
  background: url(https://antimatter.vn/wp-content/uploads/2022/06/background-cay-xanh-cho-nguoi-yeu-moi-truong.jpg)
    repeat-x;
  background-color: #90ee90;
  height: 100%;
  overflow: hidden;
} */

/* table,
td,
tr {
  border: 3px solid black;
} */



.row3 {
  width: 100%;
  height: 400px;
  /* background-color: red; */
  display: flex;
}

.Muc-cay {
  /* display: flex; */
  width: 255px;
  height: 400px;
  background-color: #f8f8ff;
  float: left;
}
.Word {
  text-align: center;
  background-color: #00cd66;
  height: 50px;
  line-height: 50px;
  font-size: 15px;
  width: 255px;
}
#nav-pro {
  width: 255px;
}

#nav-pro.List {
  border-radius: 0px;
  border: 1px solid #aecc9a;
  padding: 15px 10px;
  margin-top: 0px;
}

.List {
  display: block;
}

.icon {
  width: 20px;
  height: 25px;
  margin-bottom: 10px;
}
.danh-sach-cay {
  font-size: 20px;
  border-bottom: 2px solid #aecc9a;
  padding: 8px 0px;
}
.background1 {
  width: 100%;
  height: 300px;
  text-align: center;
  margin-top: 300px;
}
.icon-hand {
  position: relative;
  bottom: 80px;
  left: 540px;
}
.introduce-web-name {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 25px;
  position: relative;
  bottom: 150px;
  left: 40px;
}
.list-introduce {
  font-size: 25px;
  color: green;
}
.list {
  border-right: 2px solid green;
  margin-right: 10px;
  position: relative;
  bottom: 130px;
  left: 45px;
}
.Sanpham {
  text-align: center;
}
.Word2 {
  color: green;
  font-size: 60px;
}
.list-Spmoi {
  margin-left: 100px;
  display: flex;
  width: 1300px;
  height: 500px;
  /* background-color: red; */
}
.cay-canh {
  width: 900px;
  height: 450px;
  border: 1px solid grey;
  overflow: hidden;
  margin-right: 30px;
}
.div-boc-Pic {
  width: 300px;
  height: 350px;
  overflow: hidden;
  display: block;
}

.Img-tree {
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  display: block;
}
.Img-tree:hover {
  transform: scale(1.1);
  opacity: 0.8;
}
.foot-tree {
  width: 100%;
  height: 97px;
}
.name-tree {
  text-align: center;
  font-size: 22px;
  font-family: Tahoma;
}

.colum {
  margin-top: 40px;
  margin-right: 50px;
  margin-left: 120px;
}

.Chan-web {
  background-image: url(https://webcaycanh.com/wp-content/themes/cay/imgs/bg_footer.jpg);
  max-width: 100%;
  height: 500px;
}
.row4 {
  max-width: 100%;
  height: 490px;
  display: flex;
  flex-wrap: wrap;
}
.row-col {
  font-size: 18px;
  margin-top: 50px;
}
.list-footer {
  margin-top: 20px;
  font-size: 18px;
}

.picture-cay{
	border: 3px solid black;
}	
#menu ul {
            list-style-type: none;
            background: blue;
            padding-left: 0; 
            text-align: center;
        }


        #menu ul li {
            display: inline-table;
            color: white;
            width: 100px;
            height: 40px;
            line-height: 40px;
            position: relative;
        }

        #menu ul li a {
            color: white;
            display: block;
            text-decoration: none;
        }


        #menu ul li a:hover {
            background: red;
            color: white;
        }

        #menu ul li>.sub-menu {
            display: none;
            position: absolute;
        }

        #menu ul li:hover .sub-menu {
            display: block;
        }	
	.Item-cay{
	position: relative;
	bottom: 240px;
	
	}
</style>
  <body>
  <%Giohangbo h =(Giohangbo)session.getAttribute("gh");  %>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="HthicayController">Trang chủ</a>
    </div>
     <button class="navbar-toggler navbar-right" style = "float: right" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
     <ul class="nav navbar-nav">
      <%if(h!=null){ %>
      <li><a class="dropdown-toggle nav-link" href="htgioController">Giỏ hàng <span class="badge bg-warning"></span>
</a>
     <%}else{ %>
     <li><a href="htgioController" class="dropdown-toggle nav-link">Giỏ hàng <span class="badge bg-warning"></span>
</a>
     <%} %>
      </li>
      <li><a class ="nav-link" href="#">Xác nhận đã mua</a></li>
            <li><a class ="nav-link" href="lichsuController">Lịch sử mua hàng</a></li>

    </ul>
    
    <form action="HthicayController" method="post" style = "display: flex; margin-left: 100px">
				<input style = "display: inline-block" type="text" name ="txttim" class="form-control" placeholder="Nhap k can tim"> <br>
				
				<input style = "display: inline-block; border-radius: 4px; border: none; margin-left: 20px; width: 100px" type="submit" name="but1" class="btn-primary" value="search">
				
			</form>
			<%Khachhangbean kh = (Khachhangbean )session.getAttribute("un"); %>
    <ul class="nav navbar-nav ms-auto">
      <%if(session.getAttribute("un")!=null) {%>
      <li><a class = "nav-link" href = "" style ="line-height: 24px">Xin chao: <%= kh.getTenkh()%></a></li>
          	   <li ><a class ="nav-link" href="LogoutController"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
      
      <%} else{%>
      <li class ="nav-item"><a data-bs-toggle="modal" data-bs-target="#myModal" class = "nav-link btn btn-success">
    Đăng nhập
  </a></li>
        <li><a data-bs-toggle = "modal" data-bs-target="#myModal1" class ="nav-link btn btn-success"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
  
    	<% }%>
    </div>
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
	
	<table style = "width: 300px; margin-left: 1200px">
<tr style="display: flex;">
	<td width= 300px valign="top" style="border: 2px solid black; padding: 10px; background-color: #00FF7F;">
	<img alt="" src="https://scr.vn/wp-content/uploads/2020/08/icon-menu-%C4%91%E1%BA%B9p.png" style="width: 50px; height: 50px;">
	<b>Danh muc san pham</b><br>
	<td style="border: 3px "> </td>
	<table  class="table table-hover" style="border: 2px solid green; width: 300px;margin-left: 1200px ">
	<% ArrayList<Loaibean> dsloai =(ArrayList<Loaibean>)request.getAttribute("dsloai");
			for(Loaibean loai: dsloai){
		%>
		<tr>
		<td class="Iteam-hover"><a class = "nav-link" href = "HthicayController?ml=<%=loai.getMaloai()%>"><%=loai.getTenloai() %></a></td>
		
		</tr>
		
		
		<%} %>
	
	</table>
	<%
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
	ArrayList<Caybean> ds = (ArrayList<Caybean>)request.getAttribute("tt"); 
		int n = ds.size();
		for(int i=0; i<n; i++){
			Caybean s = ds.get(i);%>
			<div class="Item-cay" style="margin-bottom: 100px; margin-left: 150px">
			
			<h1><%=s.getTencay()%></h1> <br>
			<div style="width: 320px; border-bottom: 3px solid "></div>
			<div style="display: flex;">
			
			<div>
			<img alt="" src="<%=s.getAnh()%>"></div>
			<div style="margin-top: 30px; width: 400px">
			<p style="font-size: 20px; margin-left: 10px">Ma Loai San Pham: <%=s.getMaloai() %></p> <br>
			<p style="font-size: 20px; color: red;margin-left: 10px">Gia mat hang: <%=s.getGia()%></p> <br>
			<p style="font-size: 20px;margin-left: 10px">So Luong Cay trong kho: <%=s.getSoluong()%></p> <br>
			<a href="GioController?mc=<%=s.getMacay()%>&tc=<%=s.getTencay()%>&g=<%=s.getGia()%>&anh=<%s.getAnh();%>" style="text-decoration: none; color: black">
			<div style="width: 250px; height: 60px; border-radius: 12px; background-color: red; font-size: 40px;margin-left: 10px">
			<img alt="" src="https://cdn.iconscout.com/icon/free/png-256/free-shopping-cart-1962599-1656003.png" style="width: 50px; height: 50px; line-height: 60px">
			Đặt Mua
			</div>
			
			</a>
			</div>
			</div>
						
			
		
	<%}%>
	
	</div>
  <div class="background1">
    <img
      src="https://play-lh.googleusercontent.com/jfb4U2pHnjEsw001PCE_U1NYxjd6TeUfh4pFFsO9rnBH03ipNhYb8W-vjOVkfa2YXpE=w240-h480-rw"
      alt="" style="width: 70px; height: 70px" class="icon-hand" />
    <img src="https://webcaycanh.com/wp-content/themes/cay/imgs/bg1.png" alt="" style="width: 1000px" />
    <div class="introduce-web-name"><b>TIỆM CÂY NHÀ MẪN</b></div>
    <div class="list-introduce">
      <span class="list">Bán cây cảnh&emsp;</span>
      <span class="list">Chăm sóc cây&emsp;</span>
      <span class="list">Tư vấn thiết kế&emsp;</span>
    </div>
  </div>
  