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
	.Iteam-hover:hover{
		background-color: #54FF9F;
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
            <li><a class ="nav-link" href="LichsuController">Lịch sử mua hàng</a></li>

    </ul>
    
    
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

  <section class="row3">

    <div id="demo" class="carousel slide" data-bs-ride="carousel">

        <!-- Indicators/dots -->
        <div class="carousel-indicators" style="position: absolute; top: 580px ">
            <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        </div>

        <!-- The slideshow/carousel -->
        <div class="carousel-inner" style="align-items: center;">
            <div class="carousel-item active">
                <img src="Cay1.jpg" alt="Los Angeles" class="d-block" style="width: 1520px; height: 600px">
            </div>
            <div class="carousel-item">
                <img src="Cay2.jpg" alt="Chicago" class="d-block" style="width: 1520px; height: 600px">
            </div>
            <div class="carousel-item">
                <img src="Cay3.jpg" alt="New York" class="d-block" style="width: 1520px; height: 600px">
            </div>
        </div>

        <!-- Left and right controls/icons -->
        <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>
  </section>

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
  	
  
  
  
  <table style = "width: 200px; border: 2px solid; margin-left: 20px">
<tr style="display: flex;">
	<td width= 300px valign="top" style="border: 3px solid black; padding: 10px; background-color: #00FF7F;">
	<img alt="" src="https://scr.vn/wp-content/uploads/2020/08/icon-menu-%C4%91%E1%BA%B9p.png" style="width: 50px; height: 50px;">
	<b>Danh muc san pham</b><br>
	<td style="border: 3px "> </td>
	<table  class="table table-hover" style="border: 2px solid green; width: 300px;margin-left: 20px ">
	<% ArrayList<Loaibean> dsloai =(ArrayList<Loaibean>)request.getAttribute("dsloai");
			for(Loaibean loai: dsloai){
		%>
		<tr>
		<td class="Iteam-hover"><a class = "nav-link" href = "HthicayController?ml=<%=loai.getMaloai()%>"><%=loai.getTenloai() %></a></td>
		
		</tr>
		
		
		<%} %>
	
	</table>
	<form action="HthicayController" method="post" style = "display: flex; margin-left: 20px">
				<input style = "display: inline-block; width: 200px" type="text" name ="txttim" class="form-control" placeholder="Nhap ten cay"> <br>
				
				<input style = "display: inline-block; border-radius: 4px; border: none; margin-left: 20px; width: 100px" type="submit" name="but1" class="btn-primary" value="search">
				
			</form>
	</td>
	<td width= 600px valign="top" >
	<h1 style="text-align: center; font-size: 20px">Danh Sach Cay</h1> 
	<table class ="table">
	<%
	response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
		ArrayList<Caybean> ds =(ArrayList<Caybean>)request.getAttribute("dscay"); 
		
		int n = ds.size();
		for(int i = 0; i<n; i++ ){
			Caybean s =ds.get(i);
			%>
			<tr>
				<td>
				<a href="thongtinspController?tc=<%=s.getTencay()%>">
				<img src = "<%=s.getAnh()%>" class="picture-cay"><br></a>			
				 <b style="font-size: 25px; text-align: center;"><%=s.getTencay() %></b> <br>
				 <b style="color: red; font-size: 18px; text-align: center;"><%=s.getGia()%>đ</b>
				
				</td>
				<%i++;
				
				if(i<n){
					s=ds.get(i);
				%>
				
				
				<td>
				<a href="thongtinspController?tc=<%=s.getTencay()%>">
				<img src = "<%=s.getAnh()%>" class="picture-cay"><br></a>			
				 <b style="font-size: 25px; text-align: center;"><%=s.getTencay() %></b> <br>
				 <b style="color: red; font-size: 18px; text-align: center;"><%=s.getGia()%>đ</b>
				
				</td>
				<%i++;
				
				if(i<n){
					s=ds.get(i);
				%>
				<td>
				<a href="thongtinspController?tc=<%=s.getTencay()%>">
				<img src = "<%=s.getAnh()%>" class="picture-cay"><br></a>			
				 <b style="font-size: 25px; text-align: center;"><%=s.getTencay() %></b> <br>
				 <b style="color: red; font-size: 18px; text-align: center;"><%=s.getGia()%>đ</b>
				
				</td>
				<%} %>	
				<%} %>		</tr>
		 <% }
	%>
	
		
	</table>
	
	
	
	</td>
	
</tr>

</table> 
  
  
  
  
  
  <div class="Sanpham">
    <img src="https://webcaycanh.com/wp-content/themes/cay/imgs/bg_tit.png" alt="" />
    <div class="Word2"><b>SẢN PHẨM MỚI</b></div>
    <div class="Img"></div>
  </div>
  <div class="list-Spmoi">
    <div class="cay-canh">
      <div class="div-boc-Pic">
        <img src="https://webcaycanh.com/wp-content/uploads/2023/06/thong-caribe-255x255.jpg" alt=""
          style="height: 347px; width: 295px" class="Img-tree" />
      </div>
      <div class="foot-tree">
        <div class="name-tree">Cây Thông Caribe</div>
        <div class="menh gia" style="text-align: center; font-size: 18px; color: red">
          799.000
          <span><u>đ</u></span>
        </div>
      </div>
    </div>
    <div class="cay-canh">
      <div class="div-boc-Pic">
        <img src="https://webcaycanh.com/wp-content/uploads/2023/05/cay-monstera-albo-de-ban-255x255.jpg" alt=""
          style="height: 347px; width: 295px" class="Img-tree" />
      </div>
      <div class="foot-tree">
        <div class="name-tree">Cây Monstera Albo</div>
        <div class="menh gia" style="text-align: center; font-size: 18px; color: red">
          550.000
          <span><u>đ</u></span>
        </div>
      </div>
    </div>
    <div class="cay-canh">
      <div class="div-boc-Pic">
        <img src="https://webcaycanh.com/wp-content/uploads/2023/05/cay-kim-ngan-don-than-lon-255x255.jpg" alt=""
          style="height: 347px; width: 295px" class="Img-tree" />
      </div>
      <div class="foot-tree">
        <div class="name-tree">Cây Kim Ngân Đơn Thân Lớn</div>
        <div class="menh gia" style="text-align: center; font-size: 18px; color: red">
          549.000
          <span><u>đ</u></span>
        </div>
      </div>
    </div>
    <div class="cay-canh">
      <div class="div-boc-Pic">
        <img src="https://webcaycanh.com/wp-content/uploads/2023/04/cay-kim-ngan-cu-to-255x255.jpg" alt=""
          style="height: 347px; width: 295px" class="Img-tree" />
      </div>
      <div class="foot-tree">
        <div class="name-tree">Cây Kim Ngân Củ To</div>
        <div class="menh gia" style="text-align: center; font-size: 18px; color: red">
          2.300.000
          <span><u>đ</u></span>
        </div>
      </div>
    </div>
    <div class="cay-canh">
      <div class="div-boc-Pic">
        <img src="https://webcaycanh.com/wp-content/uploads/2023/04/cay-hanh-phuc-dang-tree-to-255x255.jpg" alt=""
          style="height: 347px; width: 295px" class="Img-tree" />
      </div>
      <div class="foot-tree">
        <div class="name-tree">Cây Hạnh Phúc To</div>
        <div class="menh gia" style="text-align: center; font-size: 18px; color: red">
          889.000
          <span><u>đ</u></span>
        </div>
      </div>
    </div>
  </div>
</body>
<footer>
  <div class="Chan-web">
    <div class="row4">
      <div class="colum">
        <div class="title-colum" style="font-size: 20px">
          <b>Công ty TNHH TIỆM CÂY NHÀ MẪN</b>
        </div>
        <ul style="list-style: none">
          <li class="row-col">
            <p>
              <span class="glyphicon glyphicon-home" style="margin-top: 20px"></span>
              &ensp; Đường 16 Văn Cao, TP.Huế
            </p>
          </li>
          <li class="row-col">
            <p>
              <span class="glyphicon glyphicon-user"></span>&ensp; Người đại
              diện: Phan Thiện Mẫn
            </p>
          </li>
          <li class="row-col">
            <p>
              <span class="glyphicon glyphicon-phone"></span>&ensp; 0378839527
            </p>
          </li>
          <li class="row-col">
            <p>
              <span class="glyphicon glyphicon-globe"></span>&ensp;
              manphan.31052002@gmail.com
            </p>
          </li>
        </ul>
      </div>
      <div class="colum">
        <div class="title-colum" style="font-size: 20px">
          <b>Địa chỉ buôn bán lẻ</b>
        </div>
        <ul style="list-style: none">
          <li style="margin-top: 70px; font-size: 18px">
            <p>
              <span class="glyphicon glyphicon-briefcase"></span>&ensp; 42
              Nguyễn Huệ
            </p>
          </li>
          <li class="row-col">
            <p>
              <span class="glyphicon glyphicon-briefcase"></span>&ensp; 49 Mai
              Thúc Loan
            </p>
          </li>
        </ul>
      </div>
      <div class="colum">
        <div class="title-colum" style="font-size: 20px">
          <b>Danh sách các danh mục sản phẩm </b>
        </div>
        <ul style="list-style: none; margin-top: 30px">
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cây cảnh phong thuỷ
          </li>
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cây cảnh văn phòng
          </li>
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cây cảnh trong nhà
          </li>
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cây cảnh sen đá
          </li>
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cây thuỷ sinh
          </li>
          <li class="list-footer">
            <img src="https://dungculamvuongardena.com/image/cache/catalog/icon-808x511.png" alt="" class="icon" />
            Cảnh cảnh để bàn
          </li>
        </ul>
      </div>
    </div>
  </div>
</footer>
</html>
