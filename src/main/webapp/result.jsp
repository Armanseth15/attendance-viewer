<%
  String name = (String) session.getAttribute("studentName");

  if(name == null || name.trim().equals("")){
    response.sendRedirect("login.jsp");
    return;
  }

  String[] questions = {
          "Who is known as the King of Pop?",
          "Which app is popular for music streaming?",
          "Which instrument has black and white keys?",
          "Which music app is owned by Apple?",
          "Which singer made the song “Shape of You”?",
          "Which artist is known for the album “Thriller”?",
          "Which instrument is commonly used in rock music?",
          "Which singer is known for “Blinding Lights”?",
          "What does DJ stand for?",
          "Which singer is known for “Taylor’s Version” albums?",
          "Which singer is known for the song “Someone Like You”?",
          "Which band sang “Bohemian Rhapsody”?",
          "Which singer is famous for “Bad Guy”?",
          "Which instrument is played with drumsticks?",
          "Which singer released the album “25”?",
          "Which singer is associated with the album “1989”?",
          "Which rapper is known for the album “Recovery”?",
          "Which singer is known for “Levitating”?",
          "Which music term means speed of a song?",
          "Which singer is known for “Peaches”?",
          "Which singer is famous for “Rolling in the Deep”?",
          "Which singer is known for “As It Was”?",
          "Which singer is known for “Halo”?",
          "Which singer is known for “Love Story”?",
          "Which singer is known for “Stay” with Justin Bieber?",
          "Which movie features the character Jack Dawson?",
          "Which series has the Stark family?",
          "Who is Iron Man?",
          "Which movie has the quote “Why so serious?”",
          "Which series follows Walter White?",
          "Which movie is about dreams inside dreams?",
          "Which movie features Pandora?",
          "Which sitcom features Ross, Rachel, Monica, Chandler, Joey, and Phoebe?",
          "Which movie is set in space and involves a black hole?",
          "Which series is based on a money heist in Spain?",
          "What is the name of Harry Potter’s owl?",
          "Which Marvel movie introduced Wakanda?",
          "Which series involves a place called Hawkins?",
          "Who directed Titanic?",
          "Which character says “I am vengeance” in DC?",
          "Which series is centered around Wednesday Addams?",
          "Which movie franchise has Hogwarts?",
          "Which series is known for the line “Winter is Coming”?",
          "Which movie features the character Dom Toretto?",
          "Which series includes characters named Eleven and Mike?",
          "Which movie stars Leonardo DiCaprio as Cobb?",
          "Which movie features the clown villain Pennywise?",
          "Which series follows a group of survivors after a zombie outbreak?",
          "Which movie is about a clownfish named Nemo?",
          "Which series features a chemistry teacher turned drug kingpin?"
  };

  String[] correctAnswers = {
          "Michael Jackson",
          "Spotify",
          "Piano",
          "Apple Music",
          "Ed Sheeran",
          "Michael Jackson",
          "Electric Guitar",
          "The Weeknd",
          "Disc Jockey",
          "Taylor Swift",
          "Adele",
          "Queen",
          "Billie Eilish",
          "Drums",
          "Adele",
          "Taylor Swift",
          "Eminem",
          "Dua Lipa",
          "Tempo",
          "Justin Bieber",
          "Adele",
          "Harry Styles",
          "Beyonce",
          "Taylor Swift",
          "The Kid LAROI",
          "Titanic",
          "Game of Thrones",
          "Tony Stark",
          "The Dark Knight",
          "Breaking Bad",
          "Inception",
          "Avatar",
          "Friends",
          "Interstellar",
          "Money Heist",
          "Hedwig",
          "Black Panther",
          "Stranger Things",
          "James Cameron",
          "Batman",
          "Wednesday",
          "Harry Potter",
          "Game of Thrones",
          "Fast & Furious",
          "Stranger Things",
          "Inception",
          "It",
          "The Walking Dead",
          "Finding Nemo",
          "Breaking Bad"
  };

  String[] userAnswers = new String[50];
  int score = 0;

  for(int i = 0; i < 50; i++){
    userAnswers[i] = request.getParameter("q" + (i + 1));

    if(userAnswers[i] != null && correctAnswers[i].equals(userAnswers[i])){
      score++;
    }
  }

  double percentage = (score * 100.0) / 50.0;

  String grade = "";
  String message = "";

  if(score >= 45){
    grade = "A+";
    message = "Outstanding! You really know your music and movies ";
  }
  else if(score >= 38){
    grade = "A";
    message = "Excellent work! Amazing performance ";
  }
  else if(score >= 30){
    grade = "B";
    message = "Great job! Very strong quiz attempt ";
  }
  else if(score >= 20){
    grade = "C";
    message = "Nice try! Keep improving ";
  }
  else{
    grade = "D";
    message = "Keep learning and come back stronger ";
  }

  session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
  <title>Quiz Result</title>
  <meta charset="UTF-8">
  <style>
    *{
      box-sizing:border-box;
    }

    body{
      margin:0;
      font-family:Arial, sans-serif;
      background:linear-gradient(135deg,#0f172a,#1e293b,#312e81);
      color:white;
      padding:30px 15px;
    }

    .result-box{
      max-width:1100px;
      margin:auto;
      background:rgba(255,255,255,0.10);
      backdrop-filter:blur(14px);
      border:1px solid rgba(255,255,255,0.16);
      border-radius:28px;
      padding:30px;
      box-shadow:0 20px 50px rgba(0,0,0,0.28);
    }

    .top{
      text-align:center;
      padding:10px 10px 30px;
    }

    .top h1{
      font-size:38px;
      margin-bottom:12px;
    }

    .score{
      font-size:34px;
      font-weight:bold;
      color:#4ade80;
      margin:12px 0;
    }

    .grade{
      display:inline-block;
      margin-top:8px;
      padding:10px 22px;
      border-radius:30px;
      background:linear-gradient(135deg,#f59e0b,#ef4444,#ec4899);
      font-weight:bold;
      font-size:18px;
    }

    .msg{
      margin-top:16px;
      font-size:18px;
    }

    .question-box{
      background:rgba(255,255,255,0.08);
      padding:18px;
      border-radius:18px;
      margin-bottom:16px;
      box-shadow:0 8px 18px rgba(0,0,0,0.15);
    }

    .correct{
      border-left:6px solid #22c55e;
    }

    .wrong{
      border-left:6px solid #ef4444;
    }

    .status{
      font-weight:bold;
      margin:10px 0;
      font-size:16px;
    }

    .green{
      color:#4ade80;
    }

    .red{
      color:#f87171;
    }

    .ans{
      line-height:1.8;
    }

    .btn-wrap{
      text-align:center;
      margin-top:25px;
    }

    .btn{
      display:inline-block;
      text-decoration:none;
      color:white;
      padding:14px 26px;
      border-radius:18px;
      font-weight:bold;
      background:linear-gradient(135deg,#2563eb,#9333ea,#ec4899);
      box-shadow:0 10px 25px rgba(0,0,0,0.2);
    }

    .btn:hover{
      opacity:0.92;
    }
  </style>
</head>
<body>

<div class="result-box">
  <div class="top">
    <h1>🏆 Quiz Result</h1>
    <p><b>Student:</b> <%= name %></p>
    <div class="score"><%= score %> / 50</div>
    <p><b>Percentage:</b> <%= String.format("%.2f", percentage) %>%</p>
    <div class="grade">Grade: <%= grade %></div>
    <div class="msg"><%= message %></div>
  </div>

  <%
    for(int i = 0; i < 50; i++){
      boolean isCorrect = correctAnswers[i].equals(userAnswers[i]);
  %>
  <div class="question-box <%= isCorrect ? "correct" : "wrong" %>">
    <p><b>Q<%= i + 1 %>. <%= questions[i] %></b></p>

    <div class="status <%= isCorrect ? "green" : "red" %>">
      <%= isCorrect ? "Correct " : "Wrong " %>
    </div>

    <div class="ans">
      <div><b>Your Answer:</b> <%= userAnswers[i] == null ? "Not Answered" : userAnswers[i] %></div>
      <div><b>Correct Answer:</b> <%= correctAnswers[i] %></div>
    </div>
  </div>
  <%
    }
  %>

  <div class="btn-wrap">
    <a href="login.jsp" class="btn">Take Quiz Again</a>
  </div>
</div>

</body>
</html>