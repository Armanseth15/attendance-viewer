<%
  String studentName = request.getParameter("studentName");

  if(studentName != null && !studentName.trim().equals("")){
    session.setAttribute("studentName", studentName);
  }

  String name = (String) session.getAttribute("studentName");

  if(name == null || name.trim().equals("")){
    response.sendRedirect("login.jsp");
    return;
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Music, Movies & Series Quiz</title>
  <meta charset="UTF-8">
  <style>
    *{
      box-sizing:border-box;
    }

    body{
      margin:0;
      font-family:Arial, sans-serif;
      background:linear-gradient(135deg,#fdf2f8,#ede9fe,#dbeafe,#dcfce7);
      color:#1f2937;
    }

    .header{
      background:linear-gradient(135deg,#ec4899,#8b5cf6,#2563eb);
      color:white;
      padding:30px 20px;
      text-align:center;
      box-shadow:0 8px 25px rgba(0,0,0,0.18);
    }

    .header h1{
      margin:0 0 8px;
      font-size:36px;
    }

    .header p{
      font-size:18px;
      margin:0;
    }

    .container{
      width:90%;
      max-width:1100px;
      margin:30px auto 50px;
      background:rgba(255,255,255,0.9);
      border-radius:28px;
      padding:30px;
      box-shadow:0 15px 40px rgba(0,0,0,0.12);
    }

    .section{
      margin-bottom:30px;
    }

    .section-title{
      font-size:28px;
      font-weight:bold;
      color:white;
      padding:14px 20px;
      border-radius:18px;
      margin-bottom:18px;
      box-shadow:0 8px 18px rgba(0,0,0,0.12);
    }

    .music{
      background:linear-gradient(135deg,#06b6d4,#3b82f6);
    }

    .movies{
      background:linear-gradient(135deg,#8b5cf6,#ec4899);
    }

    .question{
      background:white;
      margin-bottom:18px;
      padding:20px;
      border-radius:18px;
      box-shadow:0 8px 20px rgba(0,0,0,0.08);
      border-left:6px solid #6366f1;
    }

    .question p{
      margin:0 0 12px;
      font-weight:bold;
      font-size:17px;
    }

    label{
      display:block;
      margin:7px 0;
      padding:8px 10px;
      border-radius:10px;
      transition:0.2s;
    }

    label:hover{
      background:#f3f4f6;
    }

    .submit-btn{
      display:block;
      width:280px;
      margin:35px auto 10px;
      padding:16px;
      border:none;
      border-radius:18px;
      font-size:18px;
      font-weight:bold;
      color:white;
      cursor:pointer;
      background:linear-gradient(135deg,#2563eb,#9333ea,#ec4899);
      box-shadow:0 12px 28px rgba(0,0,0,0.16);
      transition:0.3s;
    }

    .submit-btn:hover{
      transform:scale(1.03);
    }
  </style>
</head>
<body>

<div class="header">
  <h1> Music, Movies & Series Quiz</h1>
  <p>Welcome, <b><%= name %></b> | 50 Questions</p>
</div>

<div class="container">
  <form action="result.jsp" method="post">

    <div class="section">
      <div class="section-title music"> Music Questions</div>

      <div class="question">
        <p>1. Who is known as the King of Pop?</p>
        <label><input type="radio" name="q1" value="Michael Jackson" required> Michael Jackson</label>
        <label><input type="radio" name="q1" value="Justin Bieber"> Justin Bieber</label>
        <label><input type="radio" name="q1" value="Ed Sheeran"> Ed Sheeran</label>
        <label><input type="radio" name="q1" value="Drake"> Drake</label>
      </div>

      <div class="question">
        <p>2. Which app is popular for music streaming?</p>
        <label><input type="radio" name="q2" value="Spotify" required> Spotify</label>
        <label><input type="radio" name="q2" value="Photoshop"> Photoshop</label>
        <label><input type="radio" name="q2" value="Zoom"> Zoom</label>
        <label><input type="radio" name="q2" value="Excel"> Excel</label>
      </div>

      <div class="question">
        <p>3. Which instrument has black and white keys?</p>
        <label><input type="radio" name="q3" value="Piano" required> Piano</label>
        <label><input type="radio" name="q3" value="Violin"> Violin</label>
        <label><input type="radio" name="q3" value="Drum"> Drum</label>
        <label><input type="radio" name="q3" value="Flute"> Flute</label>
      </div>

      <div class="question">
        <p>4. Which music app is owned by Apple?</p>
        <label><input type="radio" name="q4" value="Apple Music" required> Apple Music</label>
        <label><input type="radio" name="q4" value="Gaana"> Gaana</label>
        <label><input type="radio" name="q4" value="JioSaavn"> JioSaavn</label>
        <label><input type="radio" name="q4" value="Spotify"> Spotify</label>
      </div>

      <div class="question">
        <p>5. Which singer made the song “Shape of You”?</p>
        <label><input type="radio" name="q5" value="Ed Sheeran" required> Ed Sheeran</label>
        <label><input type="radio" name="q5" value="The Weeknd"> The Weeknd</label>
        <label><input type="radio" name="q5" value="Bruno Mars"> Bruno Mars</label>
        <label><input type="radio" name="q5" value="Shawn Mendes"> Shawn Mendes</label>
      </div>

      <div class="question">
        <p>6. Which artist is known for the album “Thriller”?</p>
        <label><input type="radio" name="q6" value="Michael Jackson" required> Michael Jackson</label>
        <label><input type="radio" name="q6" value="Taylor Swift"> Taylor Swift</label>
        <label><input type="radio" name="q6" value="Eminem"> Eminem</label>
        <label><input type="radio" name="q6" value="Adele"> Adele</label>
      </div>

      <div class="question">
        <p>7. Which instrument is commonly used in rock music?</p>
        <label><input type="radio" name="q7" value="Electric Guitar" required> Electric Guitar</label>
        <label><input type="radio" name="q7" value="Tabla"> Tabla</label>
        <label><input type="radio" name="q7" value="Harmonium"> Harmonium</label>
        <label><input type="radio" name="q7" value="Sitar"> Sitar</label>
      </div>

      <div class="question">
        <p>8. Which singer is known for “Blinding Lights”?</p>
        <label><input type="radio" name="q8" value="The Weeknd" required> The Weeknd</label>
        <label><input type="radio" name="q8" value="Drake"> Drake</label>
        <label><input type="radio" name="q8" value="Post Malone"> Post Malone</label>
        <label><input type="radio" name="q8" value="Bad Bunny"> Bad Bunny</label>
      </div>

      <div class="question">
        <p>9. What does DJ stand for?</p>
        <label><input type="radio" name="q9" value="Disc Jockey" required> Disc Jockey</label>
        <label><input type="radio" name="q9" value="Digital Jam"> Digital Jam</label>
        <label><input type="radio" name="q9" value="Drum Join"> Drum Join</label>
        <label><input type="radio" name="q9" value="Dual Jazz"> Dual Jazz</label>
      </div>

      <div class="question">
        <p>10. Which singer is known for “Taylor’s Version” albums?</p>
        <label><input type="radio" name="q10" value="Taylor Swift" required> Taylor Swift</label>
        <label><input type="radio" name="q10" value="Ariana Grande"> Ariana Grande</label>
        <label><input type="radio" name="q10" value="Billie Eilish"> Billie Eilish</label>
        <label><input type="radio" name="q10" value="Dua Lipa"> Dua Lipa</label>
      </div>

      <div class="question">
        <p>11. Which singer is known for the song “Someone Like You”?</p>
        <label><input type="radio" name="q11" value="Adele" required> Adele</label>
        <label><input type="radio" name="q11" value="Rihanna"> Rihanna</label>
        <label><input type="radio" name="q11" value="Katy Perry"> Katy Perry</label>
        <label><input type="radio" name="q11" value="Sia"> Sia</label>
      </div>

      <div class="question">
        <p>12. Which band sang “Bohemian Rhapsody”?</p>
        <label><input type="radio" name="q12" value="Queen" required> Queen</label>
        <label><input type="radio" name="q12" value="Coldplay"> Coldplay</label>
        <label><input type="radio" name="q12" value="Maroon 5"> Maroon 5</label>
        <label><input type="radio" name="q12" value="Imagine Dragons"> Imagine Dragons</label>
      </div>

      <div class="question">
        <p>13. Which singer is famous for “Bad Guy”?</p>
        <label><input type="radio" name="q13" value="Billie Eilish" required> Billie Eilish</label>
        <label><input type="radio" name="q13" value="Olivia Rodrigo"> Olivia Rodrigo</label>
        <label><input type="radio" name="q13" value="Dua Lipa"> Dua Lipa</label>
        <label><input type="radio" name="q13" value="Selena Gomez"> Selena Gomez</label>
      </div>

      <div class="question">
        <p>14. Which instrument is played with drumsticks?</p>
        <label><input type="radio" name="q14" value="Drums" required> Drums</label>
        <label><input type="radio" name="q14" value="Guitar"> Guitar</label>
        <label><input type="radio" name="q14" value="Piano"> Piano</label>
        <label><input type="radio" name="q14" value="Violin"> Violin</label>
      </div>

      <div class="question">
        <p>15. Which singer released the album “25”?</p>
        <label><input type="radio" name="q15" value="Adele" required> Adele</label>
        <label><input type="radio" name="q15" value="Taylor Swift"> Taylor Swift</label>
        <label><input type="radio" name="q15" value="Rihanna"> Rihanna</label>
        <label><input type="radio" name="q15" value="Sia"> Sia</label>
      </div>

      <div class="question">
        <p>16. Which singer is associated with the album “1989”?</p>
        <label><input type="radio" name="q16" value="Taylor Swift" required> Taylor Swift</label>
        <label><input type="radio" name="q16" value="Katy Perry"> Katy Perry</label>
        <label><input type="radio" name="q16" value="Ariana Grande"> Ariana Grande</label>
        <label><input type="radio" name="q16" value="Beyonce"> Beyonce</label>
      </div>

      <div class="question">
        <p>17. Which rapper is known for the album “Recovery”?</p>
        <label><input type="radio" name="q17" value="Eminem" required> Eminem</label>
        <label><input type="radio" name="q17" value="Drake"> Drake</label>
        <label><input type="radio" name="q17" value="Kanye West"> Kanye West</label>
        <label><input type="radio" name="q17" value="Travis Scott"> Travis Scott</label>
      </div>

      <div class="question">
        <p>18. Which singer is known for “Levitating”?</p>
        <label><input type="radio" name="q18" value="Dua Lipa" required> Dua Lipa</label>
        <label><input type="radio" name="q18" value="Ariana Grande"> Ariana Grande</label>
        <label><input type="radio" name="q18" value="Doja Cat"> Doja Cat</label>
        <label><input type="radio" name="q18" value="Lizzo"> Lizzo</label>
      </div>

      <div class="question">
        <p>19. Which music term means speed of a song?</p>
        <label><input type="radio" name="q19" value="Tempo" required> Tempo</label>
        <label><input type="radio" name="q19" value="Pitch"> Pitch</label>
        <label><input type="radio" name="q19" value="Bass"> Bass</label>
        <label><input type="radio" name="q19" value="Scale"> Scale</label>
      </div>

      <div class="question">
        <p>20. Which singer is known for “Peaches”?</p>
        <label><input type="radio" name="q20" value="Justin Bieber" required> Justin Bieber</label>
        <label><input type="radio" name="q20" value="Shawn Mendes"> Shawn Mendes</label>
        <label><input type="radio" name="q20" value="Drake"> Drake</label>
        <label><input type="radio" name="q20" value="Harry Styles"> Harry Styles</label>
      </div>

      <div class="question">
        <p>21. Which singer is famous for “Rolling in the Deep”?</p>
        <label><input type="radio" name="q21" value="Adele" required> Adele</label>
        <label><input type="radio" name="q21" value="Beyonce"> Beyonce</label>
        <label><input type="radio" name="q21" value="Sia"> Sia</label>
        <label><input type="radio" name="q21" value="Lorde"> Lorde</label>
      </div>

      <div class="question">
        <p>22. Which singer is known for “As It Was”?</p>
        <label><input type="radio" name="q22" value="Harry Styles" required> Harry Styles</label>
        <label><input type="radio" name="q22" value="Zayn"> Zayn</label>
        <label><input type="radio" name="q22" value="Niall Horan"> Niall Horan</label>
        <label><input type="radio" name="q22" value="Louis Tomlinson"> Louis Tomlinson</label>
      </div>

      <div class="question">
        <p>23. Which singer is known for “Halo”?</p>
        <label><input type="radio" name="q23" value="Beyonce" required> Beyonce</label>
        <label><input type="radio" name="q23" value="Rihanna"> Rihanna</label>
        <label><input type="radio" name="q23" value="Adele"> Adele</label>
        <label><input type="radio" name="q23" value="Lady Gaga"> Lady Gaga</label>
      </div>

      <div class="question">
        <p>24. Which singer is known for “Love Story”?</p>
        <label><input type="radio" name="q24" value="Taylor Swift" required> Taylor Swift</label>
        <label><input type="radio" name="q24" value="Olivia Rodrigo"> Olivia Rodrigo</label>
        <label><input type="radio" name="q24" value="Ariana Grande"> Ariana Grande</label>
        <label><input type="radio" name="q24" value="Camila Cabello"> Camila Cabello</label>
      </div>

      <div class="question">
        <p>25. Which singer is known for “Stay” with Justin Bieber?</p>
        <label><input type="radio" name="q25" value="The Kid LAROI" required> The Kid LAROI</label>
        <label><input type="radio" name="q25" value="Charlie Puth"> Charlie Puth</label>
        <label><input type="radio" name="q25" value="Post Malone"> Post Malone</label>
        <label><input type="radio" name="q25" value="Shawn Mendes"> Shawn Mendes</label>
      </div>
    </div>

    <div class="section">
      <div class="section-title movies">🎬 Movies & Series Questions</div>

      <div class="question">
        <p>26. Which movie features the character Jack Dawson?</p>
        <label><input type="radio" name="q26" value="Titanic" required> Titanic</label>
        <label><input type="radio" name="q26" value="Avatar"> Avatar</label>
        <label><input type="radio" name="q26" value="Inception"> Inception</label>
        <label><input type="radio" name="q26" value="Interstellar"> Interstellar</label>
      </div>

      <div class="question">
        <p>27. Which series has the Stark family?</p>
        <label><input type="radio" name="q27" value="Game of Thrones" required> Game of Thrones</label>
        <label><input type="radio" name="q27" value="Breaking Bad"> Breaking Bad</label>
        <label><input type="radio" name="q27" value="Friends"> Friends</label>
        <label><input type="radio" name="q27" value="Dark"> Dark</label>
      </div>

      <div class="question">
        <p>28. Who is Iron Man?</p>
        <label><input type="radio" name="q28" value="Tony Stark" required> Tony Stark</label>
        <label><input type="radio" name="q28" value="Steve Rogers"> Steve Rogers</label>
        <label><input type="radio" name="q28" value="Bruce Wayne"> Bruce Wayne</label>
        <label><input type="radio" name="q28" value="Clark Kent"> Clark Kent</label>
      </div>

      <div class="question">
        <p>29. Which movie has the quote “Why so serious?”</p>
        <label><input type="radio" name="q29" value="The Dark Knight" required> The Dark Knight</label>
        <label><input type="radio" name="q29" value="Joker"> Joker</label>
        <label><input type="radio" name="q29" value="Batman Begins"> Batman Begins</label>
        <label><input type="radio" name="q29" value="Suicide Squad"> Suicide Squad</label>
      </div>

      <div class="question">
        <p>30. Which series follows Walter White?</p>
        <label><input type="radio" name="q30" value="Breaking Bad" required> Breaking Bad</label>
        <label><input type="radio" name="q30" value="Better Call Saul"> Better Call Saul</label>
        <label><input type="radio" name="q30" value="Ozark"> Ozark</label>
        <label><input type="radio" name="q30" value="Narcos"> Narcos</label>
      </div>

      <div class="question">
        <p>31. Which movie is about dreams inside dreams?</p>
        <label><input type="radio" name="q31" value="Inception" required> Inception</label>
        <label><input type="radio" name="q31" value="Tenet"> Tenet</label>
        <label><input type="radio" name="q31" value="Shutter Island"> Shutter Island</label>
        <label><input type="radio" name="q31" value="Memento"> Memento</label>
      </div>

      <div class="question">
        <p>32. Which movie features Pandora?</p>
        <label><input type="radio" name="q32" value="Avatar" required> Avatar</label>
        <label><input type="radio" name="q32" value="Dune"> Dune</label>
        <label><input type="radio" name="q32" value="Gravity"> Gravity</label>
        <label><input type="radio" name="q32" value="Arrival"> Arrival</label>
      </div>

      <div class="question">
        <p>33. Which sitcom features Ross, Rachel, Monica, Chandler, Joey, and Phoebe?</p>
        <label><input type="radio" name="q33" value="Friends" required> Friends</label>
        <label><input type="radio" name="q33" value="How I Met Your Mother"> How I Met Your Mother</label>
        <label><input type="radio" name="q33" value="Brooklyn Nine-Nine"> Brooklyn Nine-Nine</label>
        <label><input type="radio" name="q33" value="The Office"> The Office</label>
      </div>

      <div class="question">
        <p>34. Which movie is set in space and involves a black hole?</p>
        <label><input type="radio" name="q34" value="Interstellar" required> Interstellar</label>
        <label><input type="radio" name="q34" value="Gravity"> Gravity</label>
        <label><input type="radio" name="q34" value="The Martian"> The Martian</label>
        <label><input type="radio" name="q34" value="Ad Astra"> Ad Astra</label>
      </div>

      <div class="question">
        <p>35. Which series is based on a money heist in Spain?</p>
        <label><input type="radio" name="q35" value="Money Heist" required> Money Heist</label>
        <label><input type="radio" name="q35" value="Narcos"> Narcos</label>
        <label><input type="radio" name="q35" value="Elite"> Elite</label>
        <label><input type="radio" name="q35" value="Dark"> Dark</label>
      </div>

      <div class="question">
        <p>36. What is the name of Harry Potter’s owl?</p>
        <label><input type="radio" name="q36" value="Hedwig" required> Hedwig</label>
        <label><input type="radio" name="q36" value="Crookshanks"> Crookshanks</label>
        <label><input type="radio" name="q36" value="Scabbers"> Scabbers</label>
        <label><input type="radio" name="q36" value="Fawkes"> Fawkes</label>
      </div>

      <div class="question">
        <p>37. Which Marvel movie introduced Wakanda?</p>
        <label><input type="radio" name="q37" value="Black Panther" required> Black Panther</label>
        <label><input type="radio" name="q37" value="Doctor Strange"> Doctor Strange</label>
        <label><input type="radio" name="q37" value="Thor Ragnarok"> Thor Ragnarok</label>
        <label><input type="radio" name="q37" value="Ant-Man"> Ant-Man</label>
      </div>

      <div class="question">
        <p>38. Which series involves a place called Hawkins?</p>
        <label><input type="radio" name="q38" value="Stranger Things" required> Stranger Things</label>
        <label><input type="radio" name="q38" value="Dark"> Dark</label>
        <label><input type="radio" name="q38" value="Wednesday"> Wednesday</label>
        <label><input type="radio" name="q38" value="The 100"> The 100</label>
      </div>

      <div class="question">
        <p>39. Who directed Titanic?</p>
        <label><input type="radio" name="q39" value="James Cameron" required> James Cameron</label>
        <label><input type="radio" name="q39" value="Christopher Nolan"> Christopher Nolan</label>
        <label><input type="radio" name="q39" value="Steven Spielberg"> Steven Spielberg</label>
        <label><input type="radio" name="q39" value="Martin Scorsese"> Martin Scorsese</label>
      </div>

      <div class="question">
        <p>40. Which character says “I am vengeance” in DC?</p>
        <label><input type="radio" name="q40" value="Batman" required> Batman</label>
        <label><input type="radio" name="q40" value="Superman"> Superman</label>
        <label><input type="radio" name="q40" value="Flash"> Flash</label>
        <label><input type="radio" name="q40" value="Aquaman"> Aquaman</label>
      </div>

      <div class="question">
        <p>41. Which series is centered around Wednesday Addams?</p>
        <label><input type="radio" name="q41" value="Wednesday" required> Wednesday</label>
        <label><input type="radio" name="q41" value="The Addams Family"> The Addams Family</label>
        <label><input type="radio" name="q41" value="Riverdale"> Riverdale</label>
        <label><input type="radio" name="q41" value="Chilling Adventures of Sabrina"> Chilling Adventures of Sabrina</label>
      </div>

      <div class="question">
        <p>42. Which movie franchise has Hogwarts?</p>
        <label><input type="radio" name="q42" value="Harry Potter" required> Harry Potter</label>
        <label><input type="radio" name="q42" value="Lord of the Rings"> Lord of the Rings</label>
        <label><input type="radio" name="q42" value="Twilight"> Twilight</label>
        <label><input type="radio" name="q42" value="Narnia"> Narnia</label>
      </div>

      <div class="question">
        <p>43. Which series is known for the line “Winter is Coming”?</p>
        <label><input type="radio" name="q43" value="Game of Thrones" required> Game of Thrones</label>
        <label><input type="radio" name="q43" value="Vikings"> Vikings</label>
        <label><input type="radio" name="q43" value="The Witcher"> The Witcher</label>
        <label><input type="radio" name="q43" value="House of the Dragon"> House of the Dragon</label>
      </div>

      <div class="question">
        <p>44. Which movie features the character Dom Toretto?</p>
        <label><input type="radio" name="q44" value="Fast & Furious" required> Fast & Furious</label>
        <label><input type="radio" name="q44" value="Need for Speed"> Need for Speed</label>
        <label><input type="radio" name="q44" value="Mission Impossible"> Mission Impossible</label>
        <label><input type="radio" name="q44" value="John Wick"> John Wick</label>
      </div>

      <div class="question">
        <p>45. Which series includes characters named Eleven and Mike?</p>
        <label><input type="radio" name="q45" value="Stranger Things" required> Stranger Things</label>
        <label><input type="radio" name="q45" value="Dark"> Dark</label>
        <label><input type="radio" name="q45" value="Wednesday"> Wednesday</label>
        <label><input type="radio" name="q45" value="The Umbrella Academy"> The Umbrella Academy</label>
      </div>

      <div class="question">
        <p>46. Which movie stars Leonardo DiCaprio as Cobb?</p>
        <label><input type="radio" name="q46" value="Inception" required> Inception</label>
        <label><input type="radio" name="q46" value="Titanic"> Titanic</label>
        <label><input type="radio" name="q46" value="The Revenant"> The Revenant</label>
        <label><input type="radio" name="q46" value="Shutter Island"> Shutter Island</label>
      </div>

      <div class="question">
        <p>47. Which movie features the clown villain Pennywise?</p>
        <label><input type="radio" name="q47" value="It" required> It</label>
        <label><input type="radio" name="q47" value="Annabelle"> Annabelle</label>
        <label><input type="radio" name="q47" value="The Nun"> The Nun</label>
        <label><input type="radio" name="q47" value="Smile"> Smile</label>
      </div>

      <div class="question">
        <p>48. Which series follows a group of survivors after a zombie outbreak?</p>
        <label><input type="radio" name="q48" value="The Walking Dead" required> The Walking Dead</label>
        <label><input type="radio" name="q48" value="Lost"> Lost</label>
        <label><input type="radio" name="q48" value="Prison Break"> Prison Break</label>
        <label><input type="radio" name="q48" value="Dexter"> Dexter</label>
      </div>

      <div class="question">
        <p>49. Which movie is about a clownfish named Nemo?</p>
        <label><input type="radio" name="q49" value="Finding Nemo" required> Finding Nemo</label>
        <label><input type="radio" name="q49" value="Shark Tale"> Shark Tale</label>
        <label><input type="radio" name="q49" value="Moana"> Moana</label>
        <label><input type="radio" name="q49" value="Luca"> Luca</label>
      </div>

      <div class="question">
        <p>50. Which series features a chemistry teacher turned drug kingpin?</p>
        <label><input type="radio" name="q50" value="Breaking Bad" required> Breaking Bad</label>
        <label><input type="radio" name="q50" value="Narcos"> Narcos</label>
        <label><input type="radio" name="q50" value="Ozark"> Ozark</label>
        <label><input type="radio" name="q50" value="Better Call Saul"> Better Call Saul</label>
      </div>
    </div>

    <input type="submit" value="Submit 50-Question Quiz" class="submit-btn">
  </form>
</div>

</body>
</html>