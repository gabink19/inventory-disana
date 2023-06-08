<!DOCTYPE html>
<html lang="en">

<head>
   
    <meta charset="utf-8">

      <!-- Load paper.css for happy printing -->
    <link rel="stylesheet" href="libs/faktur/four/paper.css">
    <link rel="stylesheet" href="libs/faktur/four/normalize.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css"> 
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="dist/ico/font-awesome/css/font-awesome.min.css">



    <style>
table, th, td {
    font-size: 14px;
}

th, td {

    text-align: left;
    padding: 2px !important;
}

.t-center {
    text-align: center;
}

.t-left {
    text-align: left;
}

.bgcolor {
    background: #f1f1f1;
}
    </style>

    <!-- Set page size here: A5, A4 or A3 -->
    <!-- Set also "landscape" if you need -->
    <style>@page {
        size: A4;
        margin-top: 4px;
        margin-bottom: 10px;
        margin-left: 20px;
    }</style>
    <style>
        /* Three image containers (use 25% for four, and 50% for two, etc) */
        .column {
            float: left;
            padding: 5px;
        }

        /* Clear floats after image containers */
        .row::after {
            content: "";
            clear: both;
            display: table;
        }

        table tbody tr td {
            padding: 2px !important;
            line-height: 1.35 !important;
        }

        @media print {
            .box-body {
                margin-top: 5px !important;
                margin-bottom: 10px;
            }
        }
    </style>

    <script>
        /*window.onload = function () {
          window.print();
           window.top.close();

        }*/
    </script>
    <style>
        .center-me {
            font-size: 15px;
            margin: auto;
            height: 10px;
            max-width: 500px;
            margin: 75px auto 40px auto;
            display: flex;
        }
    </style>


    <style>
@media print{
   .noprint{
       display:none;
   }
  footer {page-break-after: always;}
}




<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

$tipe=$_GET['tipe'];
$nota = $_GET["nota"];


include "configuration/config_connect.php";
$halaman = "faktur_four"; // halaman
$dataapa = "Faktur"; // data
$tabeldatabase = "invoicejual"; // tabel database

$tabel = "sale";

date_default_timezone_set("Asia/Jakarta");
$today = date('d-m-Y');
 
?>
<?php
        $decimal ="0";
        $a_decimal =",";
        $thousand =".";
        ?>
<?php
        $nota = $_GET["nota"];

        $sql1="SELECT * FROM data";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $nama=$row['nama'];
        $alamat=$row['alamat'];
        $notelp=$row['notelp'];
        $tagline=$row['tagline'];
        $signature=$row['signature'];
        $avatar=$row['avatar'];


        if($tipe=='quotation'){
$tabel = "quotation"; // tabel database
$tabeldatabase = "quotation_list"; // tabel database
$judul="Penawaran";

      $sql1="SELECT * FROM $tabel where nota='$nota'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        
        $nomor=$row['nomor'];
           $kasir=$row['kasir'];
        $due=$row['due'];
        $bayar=$row['oleh'];
        $biaya=$row['biayatambahan'];
        $total=$row['total'];
        $status=$row['status'];
         $tgl=$row['tgl'];
        $pelanggan=$row['pelanggan'];
        $diskon=$row['diskon'];
        $pot=$row['potongan'];
         $keterangan=$row['keterangan'];
        $batas="Berlaku Sampai";
       
} else {

$tabel = "sale"; // tabel database
$tabeldatabase = "invoicejual"; // tabel database
$judul="Invoice";

  $sql1="SELECT * FROM $tabel where nota='$nota'";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        
        $nomor=$row['nomor'];
           $kasir=$row['kasir'];
        $due=$row['duedate'];
        $bayar=$row['kasir'];
        $biaya=$row['biaya'];
        $total=$row['total'];
        $status=$row['status'];
         $tgl=$row['tglsale'];
        $pelanggan=$row['pelanggan'];
        $diskon=$row['diskon'];
        $pot=$row['potongan'];
         $keterangan=$row['keterangan'];
        $batas="Jatuh Tempo";
       
}

        
       

        $sql1="SELECT * FROM pelanggan where kode='$pelanggan' ";
        $hasil1=mysqli_query($conn,$sql1);
        $row=mysqli_fetch_assoc($hasil1);
        $customer=$row['nama'];
        $nohp=$row['nohp'];
        $address=$row['alamat'];


$lop=mysqli_fetch_assoc(mysqli_query($conn,"SELECT COUNT(ij.kode) as countitem FROM $tabeldatabase ij LEFT JOIN barang br ON ij.kode=br.kode WHERE nota='$nota' AND br.kategori <> '' GROUP BY br.kode"));
$lop_plus = $lop['countitem'];

$lop=mysqli_fetch_assoc(mysqli_query($conn,"SELECT COUNT(kode) as countitem FROM $tabeldatabase WHERE nota='$nota'"));
$lop['countitem'] += $lop_plus;
$numofpage=ceil($lop['countitem']/24);
if($lop['countitem']==24){
    $rowoflastpage=24;
} else {
    $rowoflastpage=$lop['countitem'] % 24;
}


$filler=0;
$lastpage=$numofpage-1;
        ?>




    </style>
</head>






<!-- Set "A5", "A4" or "A3" for class name -->
<!-- Set also "landscape" if you need -->
<body class="A4 portrait">


<?php
for ($i = 0; $i < $numofpage; $i++){
  $nohal=$i+1;  

  $limit =$nohal*24;
  $offset=$i*24;




?>



<!-- Each sheet element should have the class "sheet" -->
<!-- "padding-**mm" is optional: you can set 10, 15, 20 or 25 -->
<section id="content-print" style="background: white;border-bottom: 1px dashed;">

    <?php if($i==0){?>

    <a href="" onClick="window.print()" class="btn btn bg-maroon noprint"><i class="fa fa-print" style="text-align:center"></i> Print</a>

<?php    } ?>
    

    <div class="box-body" id="box_data" style="display: flex;padding: 5px 10px 0 10px;margin-bottom: -21px;">
        <div style="width: 100%;padding-right: 10px;" class="col-md-12">

            <div class="row">
                <div class="col-lg-4" style="width: 70%;padding-left: 0px;">
                    <h5 style="font-size: 20px;margin-bottom: 5px;">  <?php echo $nama;?></h5>
                     <p style="font-size: 12px;margin: 0;padding: 0;"><small><?php echo $alamat;?></small></p>
                </div>
                <div class="col-lg-8" style="width: 30%;">
                      <h5 style="font-size: 20px;margin-bottom: 15px;"><?php echo $judul;?></h5>

                    <h5 style="font-size: 16px;margin: 0;padding: 0;"><b>No.:<?php echo $nota;?></b></h5>

                    <p style="font-size: 12px;margin: 0;padding-top: 3px;;"><b><?php echo $batas;?>: <?php echo date('d-m-Y',strtotime($due));?></b></p>

                    <p style="font-size: 12px;margin: 0;padding-top: 5px;;"><b>Halaman: <?php echo $nohal;?> dari <?php echo $numofpage;?></b></p>

                    <br>
                </div>
            </div>
            <div class="" style="display: flex;margin-top: -62px;">

            <table style="width:60%">
                <tr class="" style="background: rgba(217,225,242,1.0);border-top: 1px dashed">
                    <td style="font-size: 16px;"  class="db text-left" width="400px" style="background: rgba(217,225,242,1.0)">
                       KEPADA: <p></p>
                       <?php echo $customer;?></td>
                      <td style="font-size: 20px;"></td>
                   
                </tr>
                
                </tr>

                  <tr class="" style="background: rgba(217,225,242,1.0);border-bottom: 1px dashed;">
                  
                    <td style="font-size: 12px;"><?php echo $address;?> </td>
                        
                    </td>
                    
                    <td>&nbsp;</td>
                    <tr class="" style="background: rgba(217,225,242,1.0);border-bottom: 1px dashed;">
                    <td style="font-size: 10px;"><?php echo $nohp;?> </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </div>
            <br>

            <table width="100%" border="0">
               
                <tr>
                    <th style="width: 80%;font-size: 12px;background: rgba(217,225,242,1.0)"></th>
                    <th></th>
                </tr>
              
               </table>
            
            <table width="100%" border="1px">
                <tr style="background: rgba(217,225,242,1.0);border-bottom: 1px solid;">
                    <th class="text-center" style="width:5%">
                        No
                    </th>
                    <th class="text-center" colspan="3">
                        Uraian
                    </th>
                    <th class="text-center" style="width:10%">
                        Qty
                    </th>
                    <th class="text-center" style="width:10%">
                        Satuan
                    </th>
                    <th class="text-center" style="width:12%">
                        Harga
                    </th>
                    <th class="text-center" style="width:12%">
                        Total
                    </th>
                </tr>
                <tbody>
                <?php
                    $kategori = [];
                    $sql1a=mysqli_query($conn,"SELECT ij.*,kt.kode,br.kategori,br.satuan FROM $tabeldatabase ij LEFT JOIN barang br ON ij.kode=br.kode LEFT JOIN kategori kt ON kt.nama=br.kategori WHERE nota='$nota' LIMIT $offset,$limit");
                    $num = ($i) * 9 + 1;
                    $kat_no = 1;
                    while($rowa=mysqli_fetch_assoc($sql1a)){
                        if ($rowa['kategori']=="") {
                            $rowa['kode']="000000";
                        }
                        $kategori[$rowa['kode']."__".$rowa['kategori']][] = $rowa;
                    }
                    ksort($kategori);
                    if(!empty($kategori)){
                        foreach($kategori as $kunci => $val){
                            $expl = explode("__",$kunci);
                            $kunci_name= $expl[1];
                            if($kunci_name!=""){
                                echo "<tr style='border-bottom: 1px solid;'>
                                <td class='text-center'>$kat_no</td>
                                <td colspan='7' style='text-align:center;background:aqua;font-weight:600'>$kunci_name</td>
                                </tr>";
                                $det_no = 1;
                                $num++;
                                foreach($val as $var){
                                    $nama = $var['nama'];
                                    $harga = number_format($var['harga']);
                                    $jumlah = $var['jumlah'];
                                    $satuan = $var['satuan'];
                                    $hargaakhir = number_format($var['hargaakhir']);
                                    echo "<tr style='border-bottom: 1px solid;'>
                                    <td></td>
                                    <td class='text-center' style='width:5%'>$det_no</td>
                                    <td colspan='2'>$nama</td>
                                    <td style='text-align:center'>$jumlah</td>
                                    <td style='text-align:center'>$satuan</td>
                                    <td style='text-align:center'>$harga</td>
                                    <td style='text-align:right'>$hargaakhir</td>
                                    </tr>";
                                    $det_no++;
                                    $num++;
                                }
                                $kat_no++;
                            }else{
                                foreach($val as $var){
                                    $nama = $var['nama'];
                                    $harga = number_format($var['harga']);
                                    $jumlah = $var['jumlah'];
                                    $satuan = $var['satuan'];
                                    $hargaakhir = number_format($var['hargaakhir']);
                                    echo "<tr style='border-bottom: 1px solid;'>
                                    <td class='text-center' style='width:5%'>$kat_no</td>
                                    <td colspan='3'>$nama</td>
                                    <td style='text-align:center'>$jumlah</td>
                                    <td style='text-align:center'>$satuan</td>
                                    <td style='text-align:center'>$harga</td>
                                    <td style='text-align:right'>$hargaakhir</td>
                                    </tr>";
                                    $kat_no++;
                                    $num++;
                                }
                            }
                        }
                    }
                ?>

              <?php 
                    if($i==$lastpage){
                    for ($a = 1; $a < $filler; $a++){
                ?>
             <tr><td>&nbsp;</td><td colspan="3">&nbsp;</td><td style="text-align:center">&nbsp;</td><td style="text-align:center">&nbsp;</td><td style="text-align:right">&nbsp;</td></tr>
             <?php } } ?>


                </tbody>
                <tfoot>
               <?php if($i==$lastpage){?>

                <tr style="background: rgba(217,225,242,1.0);">
                    <td>&nbsp;</td>
                    
                    <td colspan="3">Pajak 11%</td>
                    <td colspan="3"></td>
                    <td colspan="1" style="text-align:right"><?php echo number_format(($biaya), $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr style="background: rgba(217,225,242,1.0);">
                    <td>&nbsp;</td>
                    
                    <td colspan="2">Diskon <?php echo $diskon;?>%</td>
                    <td><?php echo number_format($pot, $decimal, $a_decimal, $thousand).',-';?></td>
                    <td colspan="3">Jumlah</td>
                    <td colspan="1" style="text-align:right"><?php echo number_format(($pot+$total), $decimal, $a_decimal, $thousand).',-';?></td>
                </tr>
                <tr style="background: rgba(217,225,242,1.0);">
                    <td colspan="4">&nbsp;</td>
                    
                    <td colspan="3">Total (Rp)</td>
                    <td style="text-align:right"><b><?php echo number_format($total, $decimal, $a_decimal, $thousand).',-';?></b></td>
                </tr>
                </tfoot>
<?php } else {?>

   <tr style="background: rgba(217,225,242,1.0);">
                    
                    <td colspan="7" style="text-align:center"><b>HALAMAN NOMOR <?php echo $nohal;?> dari <?php echo $numofpage;?></b></td>
                    
                   
                </tr>
                <tr style="background: rgba(217,225,242,1.0);">
                    <td colspan="7" style="text-align:center"><b>TOTAL ADA DI HALAMAN TERAKHIR (<?php echo $numofpage;?>)</b></td>
                </tr>
                </tfoot>


<?php } ?>
            </table>
            <br>
               <table width="100%" border="1px">
                 <tr class="" style="background: rgba(217,225,242,1.0);border-top: 1px solid">
                    <td style="font-size: 14px;"  class="db text-left" width="100px" style="background: rgba(217,225,242,1.0)">
                        Keterangan: 
                    </td>
                      <td style="font-size: 12px;"><?php echo $keterangan;?></td>
                   
                </tr>

               </table>
            <br>






            <table width="94%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="5%" rowspan="3" valign="top"><strong class="asd"> &nbsp;<br></strong></td>

<?php if($tabel!="quotation"){?>
                 
<?php if($status!='dibayar'){?>
                    <td width="40%" align="center" valign="top">
<?php
$qws2=mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM rekening ORDER BY no LIMIT 1,1"));
$qws1=mysqli_fetch_assoc(mysqli_query($conn,"SELECT * FROM rekening ORDER BY no LIMIT 1"));

?>


                        <h6 style="margin-bottom: 5px;"><b><?php echo $qws1['bank'];?> <?php echo $qws1['norek'];?> <?php echo $qws1['nama'];?></b></h6>
                        <h6 style="margin-top: 5px;"><b><?php echo $qws2['bank'];?> <?php echo $qws2['norek'];?> <?php echo $qws2['nama'];?></b></h6>

                    </td>
<?php } else { ?>
 <td width="40%" align="center" valign="top">
<h5 style="font-size: 20px">LUNAS</h5>
</td>

<?php } } ?>




                    




                         <td width="3%" valign="top"><h6 style="margin-bottom: 0;">
                        </td>




                         <td width="16%" valign="top"><h6 style="margin-bottom: 0;">
                        
                    </h6>
                    <h6 class="text-center" style="margin-top: 5px;"><?php echo $bayar;?></h6>
                    <p></p>
                        <h6 class="text-center"style="margin-top: 5px;">Direktur</h6></td>
                </tr>

            </table>



        </div>

    </div>


</section>
 <p style="font-size: 12px;text-align:center"><?php echo $signature;?></p>

<?php



if( $i % 2 != 0) {
echo '<footer></footer>';
}




 } ?>





</body>
</html>