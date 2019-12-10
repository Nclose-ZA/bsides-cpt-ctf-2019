<html>

<title> SARS Dev Branch </title>

<h1> Attention Backend Devs </h1>

<body>

<p> We're working on a new cutting edge technology utilizing blockchain, machine learning and AI to automatically detect insecure backend connectivity within our environment. </p>

<p> This is current our dev branch connected to our customer database where we got the prototype running. If any devs can get the key on this box, strategically placed by our senior security engineer - John Wick, you'll get a promotion.</p>

</body>

<IMG SRC="keanu.gif"> <br><br>

<?php

if (isset($_GET['page'])) {
$page = $_GET['page'];
}

$link = new mysqli("127.0.0.1", "bsides", '??p>xH!!P:4eWjc', "bsides");

/* Check connection before executing the SQL query */
if ($link->connect_errno) {
  printf("Database connection failed - contact support!: %s\n", $link->connect_error);
  exit();
}
else {
  echo "Database connection: Success<br>";
}

/* SQL query vulnerable to SQL injection */
$sql = "SELECT * FROM USERS WHERE id = $page";

$result = $link->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        print "Username: " . $row["username"]. " - Password: " . $row["password"]. " - First Name: " . $row["first_name"] . " - Last Name: " . $row["last_name"]. "<br><br>";
        print "You're breathtaking. Don't forget to grab the flag. Hint: Port 10012<br>";
    }
} else {
    echo "Do you even know what you're doing bro?";
}

mysqli_close($link);
?>

</html>
