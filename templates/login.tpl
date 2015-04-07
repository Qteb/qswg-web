<!-- Login Form -->
        <style type="text/css">
            body {
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: #eee;
            }
            .form-signin {
                max-width: 330px;
                padding: 15px;
                margin: 0 auto;
            }
            .form-signin .form-signin-heading,
            .form-signin .checkbox {
                margin-bottom: 10px;
            }
            .form-signin .checkbox {
                font-weight: normal;
            }
            .form-signin .form-control {
                position: relative;
                font-size: 16px;
                height: auto;
                padding: 10px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            .form-signin .form-control:focus {
                z-index: 2;
            }
            .form-signin input[type="text"] {
                margin-bottom: -1px;
                border-bottom-left-radius: 0;
                border-bottom-right-radius: 0;
            }
            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }
        </style>
        <div class="container">
            <div class="row">
                    <form method="POST" action="" accept-charset="UTF-8" class="form-signin">
                        <h2 class="form-signin-heading">Вход в систему</h2>
                        <input type="text" id="login" name="login" class="form-control" placeholder="Username">
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password">
                        <!-- <label class="checkbox">
                            <input type="checkbox" value="remember-me"> Remember me
                        </label> -->
                        <button class="btn btn-lg btn-primary btn-block" name="submit" type="submit">Войти</button>
                    </form>
            </div>
        <!-- </div> -->
<!-- END Login Form -->
