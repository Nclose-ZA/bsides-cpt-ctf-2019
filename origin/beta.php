<html>
<head>
<style>
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}
</style>
<title>origin | bsides</title>
</head>

<body>
<?php
$referer = $_SERVER['HTTP_REFERER'];
#echo "Visitor referred by page: $referer";


if (strpos($referer, 'bsides-gaming.io')) {
    echo '<h1>ehhhhhmm.. soo...</h1>
    <p>we go some good news and some bad news for you</p>
    <img src="miley.gif">
    <p>The good new is.. in case youre doing the bsides cpt 2019 ctf... we have the "origin" flag for you! the flag is: <b>filme ab 16 jahren</b></p>
    <p>The bad news is.. there is no game.. sorry</p>
    ';
}
else{
    echo '<p>in order to play the Space Explorer Beta, you need to access this page using a referral link form <a href="http://bsides-gaming.io/">bsides-gaming.io<a></p><p>Simply log into your bsides-gaming account and select "Space Explorer". You will be referred to this page (We then know that you are actually a member). We recently realized that bsides-gaming.io has been offline from time to time and we appologize for the inconvenience. I suppose if you can fool is into thinking you were referred from bsides-gaming.io, you also deserve to play the beta..';
}


?>

</body>
</html>
