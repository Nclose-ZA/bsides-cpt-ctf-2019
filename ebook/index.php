<html>
<head>
<title>ebook | bsides</title>
</head>
<body>
<h1>ebook - the electronic book reader</h1>
<p>Please select a book to read:</p>
<form action="index.php" method="POST">
    <select name="book">
        <option value="dracula">dracula</option>
        <option value="frankenstein">frankenstein</option>
        <option value="metamorphosis" selected>metamorphosis</option>
    </select>
    <input type="submit">
</form>
<h2>book content</h2>
<?php
$payload = $_POST['book'];

if (strpos($payload, 'rm ') or strpos($payload, 'mv ') or strpos($payload, '*') or strpos($payload, 'index.php') or strpos($payload, '>') or strpos($payload, '>>') or strpos($payload, 'echo ') or strpos($payload, '|') or strpos($payload, 'ln ') or strpos($payload, 'sed ') or strpos($payload, 'apache') or strpos($payload, 'bash') ) {
    $result =shell_exec('cat books/warning'); 
}
else {
    $result =shell_exec('cat books/'.$payload); 
}
echo $result;
?>
<h2>note to all security researchers</h2>
<p>In order to test our cyber security posture, we ask you to try and retrieve a hidden flag on our web-sever. The flag is hidden in a directory that has a random list of characters appended to its name, which makes an enumeration attack unfeasible. Good luck and have fun.
</p>
<body>
</html>
