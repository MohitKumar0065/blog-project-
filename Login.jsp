<%-- 
    Document   : Registration
    Created on : 30-Jun-2024, 8:16:58 am
    Author     : samresh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* color prmary = #F9C226 */

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-image:url("img/children.jpg"); 
    background-repeat: no-repeat;
    background-size: cover;
        
}

.main{
    position: relative;
    height: 100vh;
}

.main svg{
    position: absolute;
    width: 100%;
}

.navigation{
    height: 50px;
    padding: 30px 100px;
    position: relative;
    display: flex;
    justify-content: space-between;
    z-index: 99;
}

.brand h1{
    color: black;
    font-weight: 800;
}

.toggle, .close{
    display: none;
}

.nav-menu li{
    display: block;
    margin: 0 30px;
    font-size: 20px;
    color: pink;
}

.nav-menu li a{
    text-decoration: none;
    color: gray;
}

.container{
    height: 75vh;
    width: 80vw;
    color: violet;
     
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    display: flex;
    justify-content: space-between;
    padding: 70px 0 30px 0;
    
}


.photo{
    position: relative;
    width: 40%;
    height: 100%;
    padding: 0 20px;
}
 
.photo img{
    position: relative;
    width: 100%;
    height: 100%;
}

.form-cont{
    background-color: red;
    width: 35%;
    height: 100%;
    border-radius: 20px;
}

.inner-form{
    width: 60%;
    height: 100%;
    position: relative;
    display: block;
    margin: 0 auto;
}

.inner-form img{
    width: 100px;
    height: 100px;
    position: relative;
    display: block;
    margin: 0 auto;
}
.social-login{
    position: relative;
    margin: 20px 0;
    text-align: center;
}

.social-login span{
    color: yellow;
    padding: 5px 0;
    font-size: 20px;
    font-weight: 700;
}

.social-login ul li{
    display: inline;
    color: #fff;
    font-size: 30px;
    padding: 5px;
    margin: 5px 0;
}

.social-login ul>li>a{
    color: #fff;
    text-decoration: none;
}

.inner-form .imput-area{
    margin: 10px 0;
}

.input-area i{
    position: absolute;
    margin: 10px 0px;
    color: #fff;
}

.input-area input{
    position: relative;
    background: transparent;
    width: 100%;
    border: none;
    border-bottom: 2px solid #fff;
    margin: 5px 0;
    padding: 5px 18px;
   /* color: #F9C226;*/
    font-weight: 700;
    font-size: 15px;
    box-sizing: border-box;
}

::placeholder{
    color: #fff;
    opacity: 0.7;
}

.btn{
    position: relative;
    display: block;
    margin: 10px auto;
    font-size: 20px;
    background: transparent;
    box-shadow: none;
    border:  2px solid #fff;
    color: #fff;
    padding: 5px 15px;
    border-radius: 10px;
}

.btn:hover{
    border: 2px solid #F9C226;
    background-color: #fff;
    cursor: pointer;
    color: #F9C226;
}

.input-area span{
    color: #fff;
    margin: 0 5px;
}

.input-area a{
    color: #fff;
    font-weight: 700;
    margin: 0 5px;
    text-decoration: none;
}
/*
@media(max-width: 990px){
    .navigation{
        padding: 10px 100px;
    }
    .toggle{
        display: flex;
        color:#fff;
        cursor: pointer;
    }

    .close{
        display: block;
        position: absolute;
        color: #fff;
        right: 0;
        font-size: 30px;
        cursor: pointer;
        margin: 50px;
    }

    .nav-menu{
        display: none;
        position: absolute;
        width: 100%;
        height: 100vh;
        background-color: #F9C226;
        left: 0;
        top: 0;
        transition: all 3s ease;
    }
*/
   









        </style>
        <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
       -->
    </head>
    <body>
        <html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Login Page Design</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    
</head>
<body>
   
        
        
<center> <div class="navigation">
        </div> 
        <div class="container">
        </div>
        <div class="form-cont">
                <div class="inner-form">
                     <div class="social-login">
                        <span>Social Login</span>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
                            <li><a href="#"><i class="fab fa-instagram-square"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                        </ul>
                    </div>

                    <div class="input-area">
                        <form action="LoginServlet" method="post">
                            <div>
                                <i class="fas fa-envelope"></i>
                                <input type="email"name="email" placeholder="Email">
                            </div>
                            <div>
                                <i class="fas fa-lock"></i>
                                <input type="password"name="password" placeholder="Password">
                            </div>
                            <div>
                                <span>Forget Passwoard? <a href="#">Click Here</a></span>
                            </div>
                            <button class="btn">Login</button>
                            <span>Don't have account? <a href="UserRegistration.jsp">Register Here</a></span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</center>


      

    </body>
</html>

