<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title> Log in | it-news</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="{{asset('assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('assets/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="{{asset('assets/css/AdminLTE.css')}}" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script src="{{asset('assets/js/jquery-1.11.2.min.js')}}"></script>
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">Sign In</div>
            <form action="{{URL::to('login')}}" method="POST" class="form-valid">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="email" name="email" class="form-control" data-rule-required="true" placeholder="Email"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" data-rule-required="true" placeholder="Password"/>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> Remember me
                    </div>
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block">Sign me in</button>  
                    
                    <!-- <p><a href="#">I forgot my password</a></p> -->
                    
                    <!-- <a href="register.html" class="text-center">Register a new membership</a> -->
                </div>
            </form>

<!--             <div class="margin text-center">
                <span>Sign in using social networks</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>

            </div> -->
        </div>

        
        <script src="{{asset('assets/js/bootstrap.min.js')}}" type="text/javascript"></script>
        <script src="{{asset('assets/js/validate/jquery.validate.js')}}" type="text/javascript"></script>
        <!-- // <script src="{{asset('assets/js/validate/additional-methods.js')}}" type="text/javascript"></script> -->
        <script type="text/javascript">
        $(document).ready(function(){
            console.log("kesini");
            $(".form-valid").validate();
        });
        </script>
        <style>
        .error { color: #b94a48; }
        </style>
    </body>
</html>