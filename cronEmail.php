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
$mail->Subject = 'Pengingat Jatuh Tempo '.date('d/m/Y');
$mail->Body = body();
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Pesan gagal dikirim.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Pesan berhasil dikirim!';
}



function body(){
    include 'configuration/config_connect.php';
    $today = date('Y-m-d');
    $expDate = date('Y-m-d', strtotime('+3 days', strtotime($today)));
    
    $html = '<!DOCTYPE html>
    <html>
    <head>
      <title>Tabel Invoice</title>
      <style>
        table {
          width: 100%;
          border-collapse: collapse;
        }
    
        thead th {
          background-color: #f2f2f2;
          text-align: left;
          padding: 10px;
        }
    
        tbody td {
          padding: 10px;
        }
    
        tbody tr:nth-child(even) {
          background-color: #f9f9f9;
        }
    
        tbody tr:hover {
          background-color: #ebebeb;
        }
      </style>
    </head>
    <body>
      <h3>INVOICE yang akan expired kurang dari 3 hari.</h3>
      <table>
        <thead>
          <tr>
            <th>No</th>
            <th>No. Invoice</th>
            <th>Tgl Pembuatan</th>
            <th>Jatuh Tempo</th>
            <th>Pelanggan</th>
          </tr>
        </thead>
        <tbody>';
        $no = 1;
        $sql=mysqli_query($conn,"SELECT *,pelanggan.nama as namapelanggan FROM sale LEFT JOIN pelanggan ON sale.pelanggan=pelanggan.kode WHERE duedate >= '$today' and duedate <='$expDate' and sale.`status`='belum'");
        $numrows1 = $sql->num_rows;
        while($rowa=mysqli_fetch_assoc($sql)){
            $invoice = $rowa['nomor'];
            $tglsale = date('d-m-Y',strtotime($rowa['tglsale']));
            $duedate = date('d-m-Y',strtotime($rowa['duedate']));
            $namapelanggan = $rowa['namapelanggan'];
            $html .= "<tr>
                <td>$no</td>
                <td>$invoice</td>
                <td>$tglsale</td>
                <td>$duedate</td>
                <td>$namapelanggan</td>
            </tr>";
        }
    $html .= '</tbody>
      </table>
      <h3>PO yang akan expired kurang dari 3 hari.</h3>
      <table>
        <thead>
          <tr>
            <th>No</th>
            <th>Tanggal</th>
            <th>Supplier</th>
            <th>Jatuh Tempo</th>
            <th>Pelanggan</th>
          </tr>
        </thead>
        <tbody>';
        
        $sql2a=mysqli_query($conn,"SELECT *,supplier.nama as namasupplier FROM buy LEFT JOIN supplier ON buy.supplier=supplier.kode WHERE tglsale >= '$today' and tglsale <='$expDate' and status='hutang'");
        $numrows2 = $sql2a->num_rows;
        $no = 1;
        while($rowa=mysqli_fetch_assoc($sql2a)){
            $invoice = $rowa['nopo'];
            $tglsale = date('d-m-Y',strtotime($rowa['tanggal']));
            $duedate = date('d-m-Y',strtotime($rowa['tglsale']));
            $namasupplier = $rowa['namasupplier'];
            $html .= "<tr>
                <td>$no</td>
                <td>$invoice</td>
                <td>$tglsale</td>
                <td>$duedate</td>
                <td>$namasupplier</td>
            </tr>";
        }
        $html .= ' </tbody>
      </table>
    </body>
    </html>    
    ';
    
    if($numrows1==0 && $numrows2==0 ){
        die();
    }
    return $html;
}
?>
