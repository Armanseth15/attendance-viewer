<!DOCTYPE html>
<html>
<head>
  <title>Ultimate Quiz Portal</title>
  <meta charset="UTF-8">
  <style>
    *{
      margin:0;
      padding:0;
      box-sizing:border-box;
    }

    body{
      font-family:Arial, sans-serif;
      min-height:100vh;
      display:flex;
      justify-content:center;
      align-items:center;
      background:linear-gradient(135deg,#ff6ec4,#7873f5,#4ade80,#f59e0b);
      background-size:300% 300%;
      animation:bgMove 10s ease infinite;
    }

    @keyframes bgMove{
      0%{background-position:0% 50%;}
      50%{background-position:100% 50%;}
      100%{background-position:0% 50%;}
    }

    .card{
      width:420px;
      background:rgba(255,255,255,0.18);
      backdrop-filter:blur(18px);
      border:1px solid rgba(255,255,255,0.25);
      border-radius:28px;
      padding:40px 32px;
      text-align:center;
      box-shadow:0 20px 50px rgba(0,0,0,0.25);
      color:white;
    }

    .title{
      font-size:34px;
      font-weight:bold;
      margin-bottom:10px;
    }

    .subtitle{
      font-size:16px;
      opacity:0.95;
      margin-bottom:28px;
    }

    .icon{
      font-size:55px;
      margin-bottom:15px;
    }

    input[type="text"]{
      width:100%;
      padding:15px;
      border:none;
      border-radius:16px;
      outline:none;
      font-size:16px;
      margin:18px 0 24px;
      background:rgba(255,255,255,0.95);
    }

    .btn{
      width:100%;
      padding:15px;
      border:none;
      border-radius:16px;
      font-size:17px;
      font-weight:bold;
      cursor:pointer;
      color:white;
      background:linear-gradient(135deg,#2563eb,#9333ea,#ec4899);
      box-shadow:0 10px 25px rgba(0,0,0,0.2);
      transition:0.3s;
    }

    .btn:hover{
      transform:translateY(-2px) scale(1.02);
    }
  </style>
</head>
<body>

<div class="card">
  <div class="icon"></div>
  <div class="title">Ultimate Quiz Portal</div>
  <div class="subtitle">Editing • Gaming • Music • Movies & Series</div>

  <form action="exam.jsp" method="post">
    <input type="text" name="studentName" placeholder="Enter your name" required>
    <input type="submit" value="Start Quiz" class="btn">
  </form>
</div>

</body>
</html>