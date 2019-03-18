<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>


<?php


$a = 5;
$b = 5.6;
$name = 'Geg';
$bul = true;

echo "Переменная a = $a <br>";
echo "Переменная b = $b<br>";
echo "Переменная name = $name<br>";
echo "Переменная bul = $bul<br>";

//жесткие ссылки
$n_1 = -5;
$n_2 = &$n_1;

$n_2 = 3;

echo "Переменная n_2 = $n_2<br>";
echo "Переменная n_1 = $n_1";

//Символические ссылки

$a = 10;
$b = 11;

echo "<br>".$$b;
echo "<br>";
echo "<br>";
echo "<br>";
//ДЗ

$r = 10;
$v = &$r;

$k =&$r;
$c = "v";

echo "r = $r <br> v = ".$v;
echo "<br>c = $c<br><br>";

echo "php os = ".PHP_OS;


define("PI", 3.1432424);
echo "<br>";
echo "<br>";
echo "<br>";
echo defined("POoo");

define("g",9.8);


echo "<br>";
echo "Переменная g ".defined("g");

echo "<br>Действия над переменными <br>";

$summa = $a + $b;

//echo $summa;


















?>


</body>
</html>