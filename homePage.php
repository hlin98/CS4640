<?php
  // include 'dbConnection.inc.php'
  session_start();

 ?>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="homePage.css">
  <meta name="authors" content="Jenny Yao, Selinie Wang, Helen Lin">
  <title>Reciplz</title>
  <script type="text/javascript">
    /* function setFocus - sets the focus on the page to the search box when the home page is loaded*/
    function setFocus() {
      var searchItm = document.getElementById("search");
      searchItm.focus();
    }
  </script>
</head>

<body onload="setFocus();">

<html lang="en" dir="ltr">


  <header>
    <!-- navigation bar on the top left -->
    <nav class="navbar navbar-expand-lg navbar-light bg-transparent">
      <a class="navbar-brand" href="#">LOGO</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="homePage.php">Home<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile</a>
          </li>
          <li class="nav-item">
                <a class="nav-link" href="logout.php">Logout</a>
              </li>
        </ul>
      </div>
    </nav>
  </header>

  <div class="container">
    <!-- tagline for the page -->
    <div class="quote">
      <h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h3>
    </div>
    <!-- search box -->
    <form action="search_results.php" method="GET">
      <div class="form-group">
        <input type="text" class="form-control" id="search" name="search" placeholder="search" required/>
      </div>
      <!--submit button -->
      <div class="buttons">ie
        <button type="submit" class="btn btn-primary btn-lg" name="submit" id="searchBtn">Search</button>
      </div>
    </form>

  </div>
  <script type="text/javascript">
    document.getElementById("searchBtn").addEventListener("click", checkVal);

    /* function checkVal - checks if something was typed in the search box before submitting, if not the user
    will recieve an alert to add text to the search box.*/
    function checkVal() {
      var searchItm = document.getElementById("search");
      if (searchItm.value == "") {
        alert("Please type something in the search box!");
      }
    }
  </script>
</body>

</html>
