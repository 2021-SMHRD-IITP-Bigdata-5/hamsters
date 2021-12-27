
<%@page import="com.member.DTO.t_teamDTO"%>
<%@page import="com.member.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
  
  
  <!-- modal style -->
  <style>
  
  
#modal {
  display: none;
  width:100%;
  height:100%;
  z-index:1;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

#modal h2 {
  margin:0;   
  font-size: 25px;
  color: black;
	background-color: white;
	font-weight: bold;
}

 #modal button {
  display:inline-block;
  margin-left:calc(100% - 100px - 10px);
} 

#modal .modal_content {
  position: relative;
  top: 15%;
  width:550px;
  height: 400px;
  margin:0px auto;
  padding:40px;
  padding-right:0px;
  background:#fff;
  border-radius: 10px;
  
}

#modal .modal_layer {
  position:fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background:rgba(0, 0, 0, 0.8);
  z-index:-1;
}   

 #modal_close_btn {
   position: relative;
   border: none;
   background-color: white;
   width: 25px;
   height: 25px;
   cursor : pointer;
   right: -10%;
   top: -10%;
} 

button#submit {
   position: absolute;
   width: 200px;
   heigth: 50px;
   font-size: 20px;
    right : 15%;
    top : 80%;
    transform: translate(-50%, -50%);
   border: none;
   border-radius: 5px;
}


input#title{
	position: absolute;
	top : 25%;
	margin: 0px;
	background: transparent;
	width: 400px;
	height: 40px;
	align-content: center;
	border: none;
}
input#title::placeholder{
	font-weight: bold;
	font-size: 20px;
}

input#content {
	position: absolute;
	top : 40%;
	border: solid 1px;
	border-color: grey;
	margin-left: 0px;
	margin-right: 0px;
	margin-bottom: 10px;
	width: 400px;
	height: 100px;
	border-radius: 10px;
}

div.team_icon{
	width: 40px;
	height: 40px;
	border-radius: 10px;
	border: none;
	background-color: green;
	display:inline-block;
	
}

h3.team_name{
	font-weight: bold;
	display:inline-block;
}

h6.team_attri{
	display:inline-block;
}

ul#menutap{
	display: flex;
	flex-flow: row nowrap;
	align-content: space-between;	
}
ul#menutap>li{
	display: inline-block;
    margin: 0 10px;
    align-content: flex-end;
}

ul#menutap>li>a{
	text-decoration: none;
    color: black;
}

div.row1{
	position: relative;
    background: #fff;
    border-bottom: 1px solid #ddd;
    padding-top: 20px;
    padding-left: 20px;
    padding-right: 20px;
    height: 170px;
}

div.row{
	margin-top: 20px;
}

div.content{
	padding-left: 40px;
	padding-top: 40px;

}

div.newContentsBox{
	background-color: white;
	border-radius: 10px;
	border: 1px solid grey;
	width: 800px;
	height: 100px;
	padding-left: 10px;
	
}

ul.newContentsBox{
	display: flex;
	flex-flow: row nowrap;
	place-content: space-evenly;	
}

li.newContentsBox{
	display: inline-block;
    margin: auto;
    padding: 10px;
    font-weight: bold;
    font-size: 15px;
}

li.newContentsBox>button{
	background-color: white;
	border: none;
}

div.title{
	background-color: #4B49AC;
}



</style>
  
</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.html"><img src="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-bell mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">알림</p>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="ti-user mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-normal">New user registration</h6>
                  <p class="font-weight-light small-text mb-0 text-muted">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="./images/faces/댕댕이2.JPG" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                설정
              </a>
              <a class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                내프로필
              </a>
              <a class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                로그아웃
              </a>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-flex">
            <a class="nav-link" href="#">
              <i class="icon-ellipsis"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close ti-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close ti-close"></i>
        <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">MEMBER</a>
          </li>
        </ul>
        <div class="tab-content" id="setting-content">
          <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
            <div class="add-items d-flex px-3 mb-0">
              <form class="form w-100">
                <div class="form-group d-flex">
                  <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                  <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">add</button>
                </div>
              </form>
            </div>
            <div class="list-wrapper px-3">
              <ul class="d-flex flex-column-reverse todo-list">
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      이번주 업무 및 일정 확인하기
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      발표 01.03 확인
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      다음주 일정 확인하기
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      업무별 파트 확인하기
                    </label>
                  </div>
                  <i class="remove ti-close"></i>
                </li>
              </ul>
            </div>
          </div>
          <!-- To do section tab ends -->
          <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
            <div class="d-flex align-items-center justify-content-between border-bottom">
              <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
              <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
            </div>
            <ul class="chat-list">
              <li class="list active">
                <div class="profile"><img src="./images/faces/제2의유라언니.jpg"alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>최유라</p>
                  <p>A팀 프로젝트</p>
                </div>
                <small class="text-muted my-auto">19 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="./images/faces/제2의정훈.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <div class="wrapper d-flex">
                    <p>배정훈</p>
                  </div>
                  <p>A팀 프로젝트 팀장</p>
                </div>
                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                <small class="text-muted my-auto">23 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="./images/faces/슬기쿠키.jpg" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>장슬기</p>
                  <p>A팀 프로젝트</p>
                </div>
                <small class="text-muted my-auto">14 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="./images/faces/영훈.jpg" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <p>나영훈</p>
                  <p>A팀 프로젝트</p>
                </div>
                <small class="text-muted my-auto">2 min</small>
              </li>
            </ul>
          </div>
          <!-- chat tab ends -->
        </div>
      </div>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
              <button type="button" id="modal_open_btn">
            <a class="nav-link">
              <i class="icon-grid menu-icon"></i>
              <div id="root">
              <span class="menu-title">새프로젝트</span>
              </div>
            </a>
              </button>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="project.html"> 
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">내프로젝트</span>
              <i class="menu-arrow"></i>
            </a>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
              <i class="icon-columns menu-icon"></i>
              <span class="menu-title">전체업무</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
              <i class="icon-grid-2 menu-icon"></i>
              <span class="menu-title">캘린더</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
              <i class="icon-contract menu-icon"></i>
              <span class="menu-title">나를언급</span>
              <i class="menu-arrow"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">내 게시물</span>
              <i class="menu-arrow"></i>
            </a>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper" style="padding: 0px;">
          <div class="row1" style="">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                <div class="team_icon"></div>
                  <h3 class="team_name"><%="팀이름" %></h3> <br>
                  <h6 class="team_attri"><%="팀 설명" %></h6> <br>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                    <button class="btn btn-sm btn-light bg-white dropdown-toggle" type="button" id="dropdownMenuDate2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                     <i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
                    </button>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate2">
                      <a class="dropdown-item" href="#">January - March</a>
                      <a class="dropdown-item" href="#">March - June</a>
                      <a class="dropdown-item" href="#">June - August</a>
                      <a class="dropdown-item" href="#">August - November</a>
                    </div>
                  </div>
                 </div>
                </div>
                 <div class="menutap"> <br>
                 <ul type="none" id="menutap">
                 	<li><a href="#">홈</li>
                 	<li><a href="#">업무</li>
                 	<li><a href="#">캘린더</li>
                 </ul>
                 </div>
              </div>
              <div class="content">
              	<div class="newContentsBox">
              		<div>
              			<ul class="newContentsBox">
              				<li class="newContentsBox"><button type="button" id="yongdal_open">글</button></li>
              				<li class="newContentsBox"><button type="button" id="yongdal_open">업무</button></li>
              				<li class="newContentsBox"><button type="button" id="yongdal_open">일정</button></li>
              				<li class="newContentsBox"><button type="button" id="yongdal_open">할 일</button></li>
              			</ul>
              		</div>
              	</div>
              </div>
            </div>
          </div>
          
            
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->


  <!-- MODAL -->
	<div style="display: inline">
  <div id="modal" class="modal_content">
        <div class="modal_content">
            <div class="title">
                <h2>새 프로젝트 </h2>
            </div>
            <button type="button" id="modal_close_btn">X</button>
            <div class="content">
                <input type = "text" id="title" placeholder="제목을 입력하세요">
                <input type = "text" id="content" placeholder="프로젝트에 관한 설명(옵션)">
                <br>
                <br>
                <div id="button">
                    <button id="submit" type="submit">만들기</button>
                </div>

                
                
            </div>
        </div>
        <div class="modal_layer"></div>
    </div>
  </div>
  
  
  <!-- 게시글 modal 창 -->
  
  <div style="display: inline">
  <div id="modal" class="modal_content">
        <div class="modal_content">
            <div class="title">
                <h2>게시물 작성</h2>
            </div>
            <button type="button" id="yongdal_close">X</button>
            <div class="content">
                <input type = "text" id="title" placeholder="제목을 입력하세요.">
                <input type = "text" id="content" placeholder="내용을 입력하세요.">
                <br>
                <br>
                <div id="button">
                    <button id="submit" type="submit">올리기</button>
                </div>

                
                
            </div>
        </div>
        <div class="modal_layer"></div>
    </div>
  </div>
  
  
  <!-- modal scipt -->
  <script src ="js/jquery-3.6.0.min.js"></script>
<script>
document.getElementById("modal_open_btn").onclick = function() {
	    document.getElementById("modal").style.display="block";
	}
	
	document.getElementById("modal_close_btn").onclick = function() {
	    document.getElementById("modal").style.display="none";
}   
</script>



<script>
$("#yongdal_open").click(function(){
    $("#modal").attr("style", "display:block");
});

 $("#yongdal_close").click(function(){
    $("#modal").attr("style", "display:none");
});      
 </script>
 
 
 
<!--  게시글 작성 modal  -->
 
 
<script>
document.getElementById("yongdal_open").onclick = function() {
    document.getElementById("modal").style.display="block";
}

document.getElementById("yongdal_close").onclick = function() {
    document.getElementById("modal").style.display="none";
}   
</script>



<script>
$("#yongdal_open").click(function(){
    $("#modal").attr("style", "display:block");
});

 $("#modal_close_btn").click(function(){
    $("#modal").attr("style", "display:none");
});      

</script>

</body>
</html>