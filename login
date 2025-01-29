<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Animated Login and Signup Page</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="wrapper">
    <div class="info-text">
      <div class="info-text login">
        <h1>Welcome Back!</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
        <button id="signUpBtn">Sign Up</button>
      </div>
      <div class="info-text register">
        <h1>Join Us Today!</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
        <button id="loginBtn">Login</button>
      </div>
    </div>
    <div class="form-box">
      <div class="form-box login">
        <h2>Login</h2>
        <form>
          <input type="text" placeholder="Username">
          <input type="password" placeholder="Password">
          <button type="submit">Login</button>
        </form>
      </div>
      <div class="form-box register">
        <h2>Sign Up</h2>
        <form>
          <input type="text" placeholder="Username">
          <input type="email" placeholder="Email">
          <input type="password" placeholder="Password">
          <button type="submit">Sign Up</button>
        </form>
      </div>
    </div>
  </div>

  <script>
    const wrapper = document.querySelector('.wrapper');
    const loginBtn = document.querySelector('#loginBtn');
    const signUpBtn = document.querySelector('#signUpBtn');

    loginBtn.addEventListener('click', () => {
      wrapper.classList.remove('active');
    });

    signUpBtn.addEventListener('click', () => {
      wrapper.classList.add('active');
    });
  </script>
</body>
</html>body {
  font-family: Arial, sans-serif;
  margin: 0;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #121212;
  color: #fff;
}

.wrapper {
  position: relative;
  width: 750px;
  height: 450px;
  background: #fff;
  color: #000;
  border-radius: 15px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
  overflow: hidden;
}

.info-text {
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  display: flex;
  transition: transform 0.7s ease-in-out;
}

.info-text.login {
  left: 0;
  background: #000;
  color: #fff;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 20px;
  transition: opacity 0.7s ease-in-out;
}

.info-text.register {
  right: 0;
  background: #007bff;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 20px;
  opacity: 0;
}

.form-box {
  position: absolute;
  top: 0;
  width: 100%;
  height: 100%;
  display: flex;
  transition: transform 0.7s ease-in-out;
}

.form-box.login {
  left: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 50%;
  background: #f0f0f0;
}

.form-box.register {
  right: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 50%;
  background: #ffffff;
  transform: translateX(100%);
}

form {
  display: flex;
  flex-direction: column;
}

form input {
  margin: 10px 0;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

form button {
  padding: 10px;
  background: #007bff;
  border: none;
  color: white;
  border-radius: 5px;
  cursor: pointer;
  transition: background 0.3s;
}

form button:hover {
  background: #0056b3;
}

.wrapper.active .info-text.login {
  opacity: 0;
  transform: translateX(-100%);
}

.wrapper.active .info-text.register {
  opacity: 1;
  transform: translateX(0);
}

.wrapper.active .form-box.login {
  transform: translateX(-100%);
}

.wrapper.active .form-box.register {
  transform: translateX(0);
}