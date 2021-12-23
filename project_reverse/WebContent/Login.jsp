<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
.password-wrap{
   margin-top: 13px;
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
   padding-top: 13px;
}
input#inp{
   width: 465px;
   height :48px;
   font-size: 18px;
   background: var(--naver-green-color);
   color: white;
   border: solid 1px var(--naver-green-border-color);
}
.login-stay-sign-in{
   width: 465px;
   height: 52px;
   
   display: flex;
   font-size: 15px;
   color: #4e4e4e;
   align-items: center;
   justify-content: flex-start;
   border-bottom: solid 1px var(--border-gray-color);
}
.login-stay-sign-in i{
   font-size: 25px;
   color: #9ba1a3;
}
.login-stay-sign-in span{
   padding-left: 5px;
   line-height: 25px;
}

.Easy-sgin-in-wrap{

   display: flex;
   flex-direction: column;
   align-items: center;
   padding-top: 40px;

}
.Easy-sgin-in-wrap h2{
   font-size: 20px;
}
.Easy-sgin-in-wrap .sign-button-list
{
   padding-top:25px;
   list-style: none;
   width: 465px;
   display: flex;
   flex-direction: column;
   align-items: center;
}
.Easy-sgin-in-wrap .sign-button-list li{
   padding-bottom: 10px;
}
.Easy-sgin-in-wrap .sign-button-list li button{
   width: 465px;
   height: 56px;
   border: solid 1px var(--border-gray-color);
   text-align: left;
   background: white;
}
.Easy-sgin-in-wrap .sign-button-list li button i{
   padding-left: 15px;
   font-size: 20px;
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
.Easy-sgin-in-wrap .sign-button-list li button span{
   padding-left: 20px;
   font-size: 18px;
}
.Easy-sgin-in-wrap .forget-msg{
   color:var(--font-color);
   font-size: 14px;
   padding-top: 10px;

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
     -webkit-tap-highlight-color: transparent;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    font-family: HanSans;
    box-sizing: content-box;
    position: absolute;
    top: 202px;
    left: 93px;
    width: 350px;
    height: 112px;
    </style>   
</head>
<body>

<form action="LoginCon.do">
    <div class="main-container">
      <div class="main-wrap">
      <header>
         <div class="logo-wrap">
            <img src ="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" >
         </div>
      </header>
      <section class="login-input-section-wrap">
            <div class="login-input-wrap">   
               <input placeholder="Id" type="text" name="memId"></input>
            </div>
            <div class="login-input-wrap password-wrap">   
               <input placeholder="Password" type="password" name="memPw"></input>
            </div>
            <div class="login-button-wrap">            
                <input id="inp" type="submit" value="로그인">   
            </form>                  
    <script src ="js/jquery-3.6.0.min.js"></script>
    <script>
    

        $('button').on({
            'mouseover': function(){
            $(this).text("로그인 할꺼가? 그럼눌러!") 
            },
            'mouseout': function(){
            $(this).text("로그인")
            }
        })
    </script>       
            </div>
            <div class="login-stay-sign-in">
               <i class="far fa-check-circle"></i>
               <span><input type="checkbox">  자동로그인</span>
            </div>
         </form>
      </section>
   
      <footer>
         <div class="copyright-wrap">
         <span>   <img src ="https://flow.team/flow-renewal/view/homepage/assets/images/common/logo.svg" > Copyright © FLOW Corp. All Rights Reserved.</span>
         </div>
      </footer>
      </div>
   </div>
</body>
</html>