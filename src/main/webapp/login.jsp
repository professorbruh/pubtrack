<html>
    <head>
        <link rel="stylesheet" href="style.css" />
    </head>
    
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form name="myform" action="/signup" method="POST">
                    <h1>Create Account</h1>
                    <input type="text" name="name" placeholder="Name" required="" />
                    <input type="email" name="email" placeholder="Email" required="" />
              <select class="custom-select my-1 mr-sm-2" id="select" name="type" placeholder = "Type of user">
                  <option selected value="student">Student</option>
                  <option value="advisor">Editor</option>
                  <option value="faculty">Publisher</option>
              </select>
                    <input type="password" name="pass1" placeholder="Password" required="" />
                    <input type="password" name="pass2" placeholder="Confirm Password" required="" />
                    <button>Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form name="myform1" action = "/login" method="POST">
                    <h1>Sign in</h1>
                    <input type="text" name="user" placeholder="Username" required="" />
                    <input type="password" name="pass" placeholder="Password" required="" />
                    <button>Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>Login to access your account</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello there!</h1>
                        <p>Need to create a new account?</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript">
            const signUpButton = document.getElementById('signUp');
            const signInButton = document.getElementById('signIn');
            const container = document.getElementById('container');

            signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
            });

            signInButton.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
            });
        </script>
    </body>
</html>