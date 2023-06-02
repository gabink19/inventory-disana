<?php
error_reporting(0);
include "configuration/config_etc.php";
include "configuration/config_include.php";
etc();session();connect();
?>
<html>
<head>
<title></title>


<style type="text/css">
    table { page-break-inside:auto }
    tr    { page-break-inside:avoid; page-break-after:auto }
    thead { display:table-header-group }
    tfoot { display:table-footer-group }

    #content {
  margin-left: 230px;
  padding: 20px 10px 0 0;
  margin-bottom:2px;
  border:1px solid #F95;
}
#content p {
  font-size: 85%;
  line-height: 1.8em;
  padding-left: 2em;
}

h2 {
  font:Verdana, Geneva, sans-serif;
  color:#000;
  background-color: transparent;
  border-bottom: 1px  #265180;
}
table {
  font-family:Verdana, Geneva, sans-serif; 
  font-size: 10pt;
  border-width: 1px;
  border-style: solid;
  border-color:#000;
  border-collapse: collapse;
  margin: 10px 0px;
}
th{
  color:#000;
  font-size: 14px;
  padding: 0.5em;
  border-width: 1px;
  border-style: solid;
  border-color:#000;
  border-collapse: collapse;
  background-color:#FFF;
  font-weight: 400;
}



td{
  padding: 0.5em;
  vertical-align: top;
  border-width: 1px;
  border-style: solid;
  border-color: #000;
  border-collapse: collapse;
}

</style>



</head>



<?php

$nota=$_GET['nota'];

        $sql1="SELECT * FROM data";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $pt=$row['nama'];
        $avatar=$row['avatar'];
         $address=$row['alamat'];
          $phone=$row['notelp'];

 $sql1="SELECT * FROM surat WHERE nota='$nota'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $no=$row['nosurat'];
         $tujuan=$row['tujuan'];
          $telp=$row['notelp'];
           $alamat=$row['alamat'];
            $driver=$row['driver'];
             $nodriver=$row['nohp'];
              $nopol=$row['nopol'];
               $surat=$row['nosurat'];
                 $by=$row['oleh'];
        $tgl=date("d-m-Y", strtotime($row['tanggal']));



 $sql1="SELECT * FROM stok_keluar WHERE nota='$nota'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $ket=$row['keterangan'];

function tanggalIndo($dmy)
{
    $expl = explode("-",$dmy);
    $bulan_array = ["01"=>"Januari",
                    "02"=>"Februari",
                    "03"=>"Maret",
                    "04"=>"April",
                    "05"=>"Mei",
                    "06"=>"Juni",
                    "07"=>"Juli",
                    "08"=>"Agustus",
                    "09"=>"September",
                    "10"=>"Oktober",
                    "11"=>"November",
                    "12"=>"Desember"];

    return $expl[0]." ".$bulan_array[$expl[1]]." ".$expl[2];
}
?>


<body>
  <h5 style="font-family:Verdana, Geneva, sans-serif; text-align:right;font-weight:bold;font-size:15px;margin-right:40px;margin-bottom: -10px;">Surat Jalan</h5>
  <table width="100%" style="border:0px;">
  <tbody>
    <tr>
      <th style="text-align:left;width:12%;vertical-align:top;border-width:0px;">Penerima :</th>
      <th style="text-align:left;width:20%;font-weight:bold;border-width:0px;"><?php echo $tujuan;?><br><?php echo $alamat;?></th>
      <th style="text-align:left;width:20%;font-weight:bold;border-width:0px;"></th>
      <th style="text-align:center;width:30%;font-weight:bold;vertical-align:top;border-width:0px;">Tanggal : <?php echo tanggalIndo($tgl);?></th>
    </tr>
  </tbody>
</table>
<br>
<table width="100%" border="0" bgcolor="#000000">
      <tbody>
        <tr bgcolor="#FFFFFF" height="40">
          <th width="1%" scope="col">No</th>
          <th width="8%" scope="col">Item Description</th>
          <th width="4%" scope="col">Qty</th>
          <th width="3%" scope="col">No. PO</th>
        </tr>

 <?php

          $query1="SELECT * FROM stok_keluar_daftar WHERE nota='$nota' order by no";
          $hasil = mysqli_query($conn,$query1);
          $no_urut=0;
          while ($fill = mysqli_fetch_assoc($hasil)){
            ?>

          <tr bgcolor="white">
              <td align="center"><?php echo ++$no_urut;?></td>
              <td><?php  echo mysqli_real_escape_string($conn, $fill['nama']); ?></td>
              <td align="center"><?php echo mysqli_real_escape_string($conn, $fill['jumlah']); ?> <?php  $cba =$fill['kode_barang'];
                        $r=mysqli_fetch_assoc(mysqli_query($conn,"SELECT satuan FROM barang WHERE kode='$cba'"));
                        echo mysqli_real_escape_string($conn, $r['satuan']); 
                ?></td>
              <td align="center"></td>
          </tr>

<?php } ?>

          <tr bgcolor="white">
              <td colspan="2">Catatan : <font style="color:red"><?php echo $ket;?></font></td>
              <td colspan="2">PERHATIAN :
                <br>1. Surat Jalan ini merupakan bukti resmi penerimaan barang
                <br>2. Surat Jalan ini bukan bukti penjualan
                <br>3. Surat Jalan ini akan dilengkapi dengan invoice sebagai bukti penjualan
              </td>
          </tr>
          </tbody>
        </table>
   <br>
<table width="100%" style="border: none;">
  <tbody>
    <tr>
    <th width="50%" scope="col" style="border: none;border-bottom:1px">Dikirim Oleh :</th>
    <th width="50%" scope="col" style="border: none;">Yang Menerima :</th>
  </tr>
  <tr>
    <th height="83" scope="row"  style="border: none;">&nbsp;</th>
    <td style="border: none;">&nbsp;</td>
  </tr>
  <tr>
    <th align="center" style="border: none;"><?php echo $driver;?><hr style="width: 200px;"></th>
    <th align="center" style="border: none;">&nbsp;<hr style="width: 200px;"></th>
  </tr>
  <tr>
    <th align="center" style="border: none;margin-top:-10px">Tanggal : <?php echo tanggalIndo($tgl);?></th>
    <th align="center" style="border: none;">Tanggal :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
  </tr>
</tbody>
</table>


<script>
  setTimeout(function(){window.print()}, 1000);
</script>
