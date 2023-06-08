<?php
use PHPMailer\PHPMailer\PHPMailer;

include 'configuration/config_connect.php';
require 'vendor/autoload.php';

function parseEnvFile($filePath) {
    $envData = file_get_contents($filePath);
    $lines = explode("\n", $envData);
    $envVariables = array();

    foreach ($lines as $line) {
        $line = trim($line);
        if (empty($line) || strpos($line, '#') === 0) {
            continue;
        }

        $parts = explode('=', $line, 2);
        if (count($parts) === 2) {
            $key = trim($parts[0]);
            $value = trim($parts[1], " \t\n\r\0\x0B\"'");
            $envVariables[$key] = $value;
        }
    }

    return $envVariables;
}

$sql1="SELECT * FROM data";
$hasil1=mysqli_query($conn,$sql1);
$row=mysqli_fetch_assoc($hasil1);
$nama=$row['nama'];
$recipients=json_decode($row['emailNotifReceiver'],1);

$envVariables = parseEnvFile('.env');

$mail = new PHPMailer;
$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->Port = 587;
$mail->SMTPSecure = 'tls';
$mail->SMTPAuth = true;
$mail->SMTPDebug  = 2;
$mail->Username = $envVariables['SMTP_USERNAME']; 
$mail->Password = $envVariables['SMTP_PASS']; 

$mail->setFrom($envVariables['SMTP_USERNAME'], $nama);

foreach ($recipients as $recipient) {
    $mail->addAddress($recipient);
}

$mail->addReplyTo($envVariables['SMTP_USERNAME'], $nama);

$mail->isHTML(true);
$mail->Subject = 'Subject of your email';
$mail->Body = '<h1>Body of your email</h1><p>This is the HTML message body</p>';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Pesan gagal dikirim.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Pesan berhasil dikirim!';
}
?>
