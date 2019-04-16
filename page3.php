<?php
$message = "<html> <body style='background-color: aqua;'><h1>Текст сообщения</h1>Текст сообщения</body></html>";
$to = "spbromanov@mail.ru";
$from = "vadim@mail.ru";
$subject = "Тестовое сообщение№1";
$subject = "=?utf-8?B?".base64_encode($subject)."?=";
$headers = "From: $from\r\nReply-to: $from\r\nContent-type: text/html; charset: utf-8\r\n";
mail($to, $subject, $message, $headers);
