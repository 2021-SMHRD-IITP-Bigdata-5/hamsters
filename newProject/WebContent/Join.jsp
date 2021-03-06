<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
    <style>
        :root{
   --body-background-color: #f5f6f7;
   --font-color: #4e4e4e;
   --border-gray-color : #dadada;
   --naver-green-color: #623ad6;
   --naver-green-border-color: #623ad6;
}


*{
   margin:0;
   padding:0;
}

body{
   background:var(--body-background-color);
}

.main-container{
   width:100%;
   display:flex;
   flex-direction:column;
   align-items:center;
   margin-top: 21px;
}
.main-container .main-wrap{
   width:768px;

}
.main-container .main-wrap .sel-lang-wrap .lang-select
{
   width: 96px;
   height: 30px;
   color: var(--font-color);
   border: solid 1px var(--border-gray-color);
   
}



.main-container .main-wrap .logo-wrap{
   padding-top:55px;
}
.main-container .main-wrap .logo-wrap img
{
   width: 231px;
   height: 44px;
}

.main-container .main-wrap header .sel-lang-wrap{
   display:flex;
   justify-content:flex-end;
}

.main-container .main-wrap header .logo-wrap{
   display:flex;   
   flex-direction: column;
   align-items: center;
}
.login-input-section-wrap{
   padding-top: 0px;
   display: flex;
   flex-direction: column;
   align-items: center;
}

.login-input-section-wrap2{
   padding-top: 60px;
   display: flex;
   flex-direction: column;
   align-items: center;
   
}


.login-input-wrap{
   width: 465px;
   height :48px;
   border: solid 1px var(   --border-gray-color );
   background: white;
}

.login-input-wrap#idCheck{
   width: 465px;
   height :48px;
   border: solid 1px var(   --border-gray-color );
   background: white;
}

.password-wrap{
   margin-top: 0px;
}
.login-input-wrap input#idCheck{
   border: none;
   width:399.4px;
   margin-top: 0px;
   font-size: 14px;
   margin-left: 10px;
   height:30px;
   right: 50px;
}
.login-input-wrap input{
   border: none;
   width:430px;
   margin-top: 10px;
   font-size: 14px;
   margin-left: 10px;
   height:30px;
}
.login-button-wrap {
   padding-top: 28px;
}
div>button#check{
   width: 50px;
   height :48px;
   font-size: 15px;
   background: var(--naver-green-color);
   color: white;
   border: solid 1px var(--naver-green-border-color);
   cursor : pointer;
   
}
.login-button-wrap button{
   width: 465px;
   height :48px;
   font-size: 18px;
   background: var(--naver-green-color);
   color: white;
   border: solid 1px var(--naver-green-border-color);
   cursor : pointer;
}



.fa-qrcode
{
   color:var(--naver-green-color);
}
.fa-line{
   color:var(--naver-green-color);
}
.fa-facebook-square
{
   color:#4064ac;
}


footer{
   
   padding-top: 95px;
   padding-bottom: 15px;

   display:flex;
   flex-direction:column;
   align-items:center;
   width:768px;



}
.copyright-wrap{

   display: flex;
   flex-direction: column;
   align-items: center;
   height: 15px;


}
footer .copyright-wrap span img{
   width: 59px;
   
   height: 11px;
}
footer .copyright-wrap span{
   font-size: 13px;
   line-height: 15px;
}
    </style>
</head>
<body>
   <script src="//code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript">
      function checkId() {
    	
         $.ajax({
            url : "check.do",
            type : "get",
            data : {
               "id" : $("input[id=idCheck]").val()
            },
            success : function(res) {
               if (res == "true") {
                  $("#result").html("????????? ID?????????. ?????? ID??? ??????????????????.").css("color", "red");
               } else {
                  $("#result").html("??????????????? ID?????????. ")
                        .css("color", "#623ad6");
               }

            },
            error : function() {
               alert("????????????")
            }
         });
       
      }
      
     
    
      
   </script>
	<form action="JoinCon.do" method="post">
    <div class="main-container">
      <div class="main-wrap">
      <header>
         <div class="sel-lang-wrap">
            
         </div>
         <div class="logo-wrap">
            <img src ="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" width ="100" height="25">
         </div>
      </header>
      <section class="login-input-section-wrap2">
         <div id="idCheck" class="login-input-wrap">   
         <input id="idCheck" class="idvalue" placeholder="Id(????????????)" type="text" name="id"></input>
         <button id="check" type="button" onclick="checkId()">??????</button>
         </div>
     </section>
      <section class="login-input-section-wrap">
         <div>
            <p id="result"></p>
         </div>
         <div class="login-input-wrap password-wrap">   
            <input id="Password" placeholder="Password(????????????)" type="password" name="pw"></input>
         </div>
         <div class="login-input-wrap">   
         <input placeholder="Name(????????????)" type="text" name="name"></input>
         </div>
         <div class="login-input-wrap">   
         <input placeholder="Company" type="text" name="com"></input>
         </div>
         <div class="login-input-wrap">   
         <input placeholder="Email(????????????)" type="text" name="email"></input>
         </div>
         <div class="login-input-wrap">   
         <input placeholder="Tel(????????????)" type="text" name="phone"></input>
         </div>
         <div class="login-input-wrap">   
         <input placeholder="?????????" type="text" name="statu"></input>
         </div>
         <div class="login-button-wrap">
            <button class="register_btn">????????????</button>
         </div>
         </form>
      </section>
      
      <footer>
         <div class="copyright-wrap">
         <span><img src ="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" width ="100" height="25"> Copyright ?? HAMSTERS Corp. All Rights Reserved.</span>
         </div>
      </footer>
      </div>
   </div>
<script>
	$(".register_btn").click(function(e) {
		
		let account = $(".idvalue").val();
	    let password = $("#Password").val();
	   
	        var idcheck = /^[a-zA-Z]{1}[a-zA-Z0-9_]{4,11}$/.test(account);
	        var pscheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+])(?!.*[^a-zA-z0-9$`~!@$!%*#^?&\\(\\)\-_=+]).{8,}$/.test(password);


	        if (account.trim() === "") {
	            alert("ID ??????!!");
	            return false;
	        }

	        if(!idcheck){
	            alert("???????????? 5 ~ 12???, ??????, ????????? ??????????????? ?????????.");
	            return false;
	        }

	        if (password.trim() === "") {
	            alert("???????????? ??????!!");
	            return false;
	        }

	        if(!pscheck){
	            alert("??????????????? ?????? 8???, ?????? ????????? ?????????, ??????, ??????????????? ??????????????? ?????????.");
	            return false;
	        }
	        
	        $.ajax({ 
	            url : "JoinCon.do",
	            type : "post",
	            data : {
	               "id" : account,
	               "password" : password
	            },
	            success : function(res) {
	               if (res == "true") {
	                  $("#result").html("????????? ID?????????. ?????? ID??? ??????????????????.").css("color", "red");
	               } else {
	                  $("#result").html("??????????????? ID?????????. ")
	                        .css("color", "#623ad6");
	               }

	            },
	            error : function() {
	               alert("????????????")
	            }//???????????????
	         });
	});
</script>   
</body>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-5/hamsters.git
</html>