<!DOCTYPE html>
<html>

 <script src="dist/plugins/chartjs/Chart.bundle.js"></script>
       
<script type="text/javascript" src="libs/chartjs/chartjs-plugin-colorschemes.js"></script>
<?php
include "configuration/config_etc.php";
include "configuration/config_include.php";
include "configuration/config_alltotal.php";
etc();encryption();session();connect();head();body();timing();
pagination();
?>

<?php
if (!login_check()) {
?>
<meta http-equiv="refresh" content="0; url=logout" />
<?php
exit(0);
}
?>
<div class="wrapper">
<?php
theader();
menu();
?>

<?php
$decimal ="0";
$a_decimal =",";
$thousand =".";
?>
            <div class="content-wrapper">
                <section class="content-header">
</section>
                <section class="content">
                  <div class="row">
                    <div class="col-lg-3 col-xs-6">
                                       <!-- small box -->
                                       <div class="small-box bg-aqua">
                                           <div class="inner">
                                                <h3 style="font-size: 30px"><?php echo $data11; ?><sup style="font-size: 20px">Trx</sup></h3>
                                               <p>Total Trx Batal</p>
                                           </div>
                                           <div class="icon">
                                             <i class="ion ion-stats-bars"></i>
                                           </div>

                                       </div>
                                   </div>
                                   <!-- ./col -->
                                   <div class="col-lg-3 col-xs-6">
                                       <!-- small box -->
                                       <div class="small-box bg-yellow">
                                           <div class="inner">
                                                 <h3 style="font-size: 30px"><?php echo $data21; ?><sup style="font-size: 20px">Trx</sup></h3>
                                               <p>Total Trx Dibayar</p>
                                           </div>
                                           <div class="icon">
                                              <i class="ion ion-stats-bars"></i>
                                           </div>

                                       </div>
                                   </div>
                                   <!-- ./col -->
                    <div class="col-lg-3 col-xs-6">
                                       <!-- small box -->
                                       <div class="small-box bg-green">
                                           <div class="inner">
                                              <h3 style="font-size: 30px"><?php echo $data31; ?><sup style="font-size: 20px">Trx</sup></h3>
                                               <p>Trx Berstatus Hutang</p>
                                           </div>
                                           <div class="icon">
                                               <i class="ion ion-stats-bars"></i>
                                           </div>

                                       </div>
                                   </div>
                                   <!-- ./col -->
                                   <div class="col-lg-3 col-xs-6">
                                       <!-- small box -->
                                       <div class="small-box bg-red">
                                           <div class="inner">
                                                <h3 style="font-size: 30px"><?php echo $data41; ?><sup style="font-size: 20px">Trx</sup></h3>
                                               <p>Trx telah diterima</p>
                                           </div>
                                           <div class="icon">
                                               <i class="ion ion-stats-bars"></i>
                                           </div>

                                       </div>
                                   </div>
                  </div>
                    <div class="row">
            <div class="col-lg-12">

              <!-- SETTING START-->

<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
include "configuration/config_chmod.php";
$halaman = "report_beli"; // halaman
$dataapa = "Pembelian"; // data
$tabeldatabase = "buy"; // tabel database
$chmod = $chmenu9; // Hak akses Menu
$forward = mysqli_real_escape_string($conn, $tabeldatabase); // tabel database
$forwardpage = mysqli_real_escape_string($conn, $halaman); // halaman
$bulan = $_POST['bulan'];
$tahun = $_POST['tahun'];

?>

<!-- SETTING STOP -->

<textarea id="printing-css" style="display:none;">.no-print{display:none}</textarea>
<iframe id="printing-frame" name="print_frame" src="about:blank" style="display:none;"></iframe>
<script type="text/javascript">
function printDiv(elementId) {
 var a = document.getElementById('printing-css').value;
 var b = document.getElementById(elementId).innerHTML;
 window.frames["print_frame"].document.title = document.title;
 window.frames["print_frame"].document.body.innerHTML = '<style>' + a + '</style>' + b;
 window.frames["print_frame"].window.focus();
 window.frames["print_frame"].window.print();
}
</script>

<!-- BREADCRUMB -->


<!-- BOX HAPUS BERHASIL -->

         <script>
 window.setTimeout(function() {
    $("#myAlert").fadeTo(500, 0).slideUp(1000, function(){
        $(this).remove();
    });
}, 5000);
</script>


       <!-- BOX INFORMASI -->
    <?php
if ($chmod == '1' || $chmod == '2' || $chmod == '3' || $chmod == '4' || $chmod == '5' || $_SESSION['jabatan'] == 'admin') {?>


<section class="col-lg-12 connectedSortable">
 <div class="box">
       
        <div class="box-body">
          

            <div class="box-body">
          <form method="get" action="">
        

             
            <div class="col-sm-1">
              
            </div>

            <div class="col-sm-1">
             <label>Dari</label>
                  
            </div>

            <div class="col-sm-2">
              
                   <input type="text" class="form-control" id="datepicker" name="dari" autocomplete="off" placeholder="Dari">
            </div>

<div class="col-sm-1">
             <label>Sampai</label>
                  
            </div>

            <div class="col-sm-2">
              
                   <input type="text" class="form-control" id="datepicker2" name="sampai">
            </div>

               <div class="col-sm-3">
              
                   <button type="submit" name="find" class="btn bg-maroon">Filter</button>
            </div>

</form>
        
        </div>





        </div>

                                <!-- /.box-body -->
                            </div>
</section>





<?php 
 if(isset($_GET["find"])){
  if($_SERVER["REQUEST_METHOD"] == "GET"){


$dr = $_GET['dari'];
$sam = $_GET['sampai'];

      
$caba       = mysqli_query($conn, "SELECT DISTINCT status FROM buy "); 
$biaya       = mysqli_query($conn, "SELECT status,SUM(total) as cost FROM buy WHERE tglsale BETWEEN '" . $dr . "' AND  '" . $sam . "' GROUP BY status");  



if($dr!=''){

   $dari=date("d-m-Y",strtotime($dr));
} else {
  $dari="Awal";
}


 $sampe=date("d-m-Y",strtotime($sam));

?>


<section class="col-lg-12 connectedSortable">


    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">#Periode: <?php echo $dari;?> - <?php echo $sampe;?></h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body">

         <div class="row">


<div class="col-md-5">

<canvas id="percabang" style="height:280px"></canvas>
    <script>
 
        var ctx = document.getElementById("percabang").getContext("2d");

         // Chart options
  Chart.defaults.global.legend.display = false;
  Chart.defaults.global.tooltips.enabled = true;

        // tampilan chart
        var piechart = new Chart(ctx,{type: 'pie',
          data : {
        // label nama setiap Value
        
         labels: [<?php while ($b = mysqli_fetch_array($caba)) { echo '"' . $b['status'] . '",';}?>],

        datasets: [{
          // Jumlah Value yang ditampilkan
            label: '# dalam rupiah',
           data: [<?php while ($b = mysqli_fetch_array($biaya)) { echo '"' . $b['cost'] . '",';}?>],
 
                   borderWidth: 1
        }],
        }


        });
 
    </script>

</div>

<div class="col-md-7">


 <table class="table table-striped">
                <tr>
                  <th style="width: 10px">#</th>
                  <th>Status</th>
                  <th>Total</th>
                
                 
                </tr>

<?php  


$sql = "SELECT status,SUM(total) as cost FROM buy WHERE tglsale BETWEEN '" . $dr . "' AND  '" . $sam . "' GROUP BY status";
$hasil = mysqli_query($conn,$sql);

$no_urut=0;
while ($fill = mysqli_fetch_assoc($hasil)){ ?>

                <tr>
                  <td><?php echo ++$no_urut;?></td>
                  <td><?php  echo mysqli_real_escape_string($conn, $fill['status']); ?></td>
                  <td>Rp 
                   <?php  echo mysqli_real_escape_string($conn, $fill['cost']); ?>
                    </div>
                  </td>
                  
                  
                </tr>

<?php } ?>


               
              </table>



</div>






         </div>

        </div>
      </div>


</section>



<?php } } ?>


<section class="col-lg-12 connectedSortable">


<div class="box" id="tabel1">
            <div class="box-header with-border">
              <h3 class="box-title">Data Pembelian Periode: <?php echo $dari;?> - <?php echo $sampe;?></h3>
             
            </div>
            <!-- /.box-header -->
            <div class="box-body">



 <?php
    error_reporting(E_ALL ^ E_DEPRECATED);
    if(isset($sam)){

    $sql    = "select *, supplier.nama as supplier from buy inner join supplier on supplier.kode = buy.supplier WHERE buy.tanggal BETWEEN '" . $dr . "' AND  '" . $sam . "' order by buy.no desc";
  } else {
     $sql    = "select *, supplier.nama as supplier from buy inner join supplier on supplier.kode = buy.supplier order by buy.no desc";
  }
    $result = mysqli_query($conn, $sql);
    $rpp    = 15;
    $reload = "$halaman"."?pagination=true";
    $page   = intval(isset($_GET["page"]) ? $_GET["page"] : 0);

    if ($page <= 0)
        $page = 1;
    $tcount  = mysqli_num_rows($result);
    $tpages  = ($tcount) ? ceil($tcount / $rpp) : 1;
    $count   = 0;
    $i       = ($page - 1) * $rpp;
    $no_urut = ($page - 1) * $rpp;
?>

              <table class="table table-bordered" >
               <tr>
                                              <th>No</th>
                                              <th>No P.O/Faktur</th>
                                              <th>Tanggal</th>
                                              <th>Jumlah Item</th>
                                              <th>Total Tagihan</th>
                                              <th>Supplier</th>
                                              <th>Status</th>
                                                <th>Diterima</th>
                                              <th>Cc</th>
                                              
                        <?php if ($chmod >= 3 || $_SESSION['jabatan'] == 'admin') { ?>

                                              
                                                
                        <?php }else{} ?>
                                            </tr>
  
  <?php  
 while(($count<$rpp) && ($i<$tcount)) {
      mysqli_data_seek($result,$i);
      $fill = mysqli_fetch_array($result);?>

              <tr>
  <td><?php echo ++$no_urut;?></td>
  <td><?php  echo mysqli_real_escape_string($conn, $fill['nopo']); ?></td>
  <td><?php  echo mysqli_real_escape_string($conn, $fill['tanggal']); ?></td>
  <?php
$nota = $fill['nota'];
$sqle="SELECT COUNT( nota ) AS data FROM invoicebeli WHERE nota ='$nota'";
$hasile=mysqli_query($conn,$sqle);
$rowa=mysqli_fetch_assoc($hasile);
$jumlahbeli=$rowa['data'];

$jml= " SELECT SUM(jumlah) tot_beli FROM invoicebeli WHERE nota ='$nota'"  ;
$hasil1=mysqli_query($conn,$jml);
$row1=mysqli_fetch_array($hasil1);
$jmlbeli=$row1['tot_beli'];

   ?>
   
  <td><?php  echo mysqli_real_escape_string($conn, $jmlbeli); ?></td>
  <td><?php  echo mysqli_real_escape_string($conn, $fill['total']); ?></td>
  <td><?php  echo mysqli_real_escape_string($conn, $fill['supplier']); ?></td>
   <td><?php  echo mysqli_real_escape_string($conn, $fill['status']); ?></td>
    <td><?php  echo mysqli_real_escape_string($conn, $fill['diterima']); ?></td>
  <td><?php  echo mysqli_real_escape_string($conn, $fill['kasir']); ?></td>
 </tr>
      <?php
      $i++;
      $count++;
    }

    ?>
                  </tbody></table>
          <div align="right"><?php if($tcount>=$rpp){ echo paginate_one($reload, $page, $tpages);}else{} ?></div>
            </div>
            <!-- /.box-body -->
            



          </div>

 <div align="right"  style="padding-right:15px"  class="no-print" id="no-print" >
             <div align="left" class="no-print" id="no-print"> <a onclick="javascript:printDiv('tabel1');" class="btn btn-default btn-flat" name="cetak" value="cetak"><span class="glyphicon glyphicon-print"></span></a><?php echo " "; ?>
               <a onclick="window.location.href='configuration/config_export?forward=<?php echo $forward; ?>&search=<?php echo $search; ?>'" class="btn btn-default btn-flat" name="cetak" value="export excel"><span class="glyphicon glyphicon-save-file"></span></a></div> <br/>
             </div>
</section>




<?php } else {
?>
   <div class="callout callout-danger">
    <h4>Info</h4>
    <b>Hanya user tertentu yang dapat mengakses halaman <?php echo $dataapa;?> ini .</b>
    </div>
    <?php
}
?>

                    <!-- /.row -->
                    <!-- Main row -->
                    <div class="row">
                    </div>
                    <!-- /.row (main row) -->
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
           <?php footer();?>
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
<script src="dist/plugins/jQuery/jquery-2.2.3.min.js"></script>
      <script src="1-11-4-jquery-ui.min.js"></script>
      <script>
$.widget.bridge('uibutton', $.ui.button);
</script>
      <script src="dist/bootstrap/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
      <script src="dist/plugins/morris/morris.min.js"></script>
      <script src="dist/plugins/sparkline/jquery.sparkline.min.js"></script>
      <script src="dist/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="dist/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
      <script src="dist/plugins/knob/jquery.knob.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
      <script src="dist/plugins/daterangepicker/daterangepicker.js"></script>
      <script src="dist/plugins/datepicker/bootstrap-datepicker.js"></script>
      <script src="dist/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
      <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
      <script src="dist/plugins/fastclick/fastclick.js"></script>
      <script src="dist/js/app.min.js"></script>
      <script src="dist/js/demo.js"></script>
  <script src="dist/plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="dist/plugins/datatables/dataTables.bootstrap.min.js"></script>
  <script src="dist/plugins/slimScroll/jquery.slimscroll.min.js"></script>
  <script src="dist/plugins/fastclick/fastclick.js"></script>
  <script src="dist/plugins/select2/select2.full.min.js"></script>
  <script src="dist/plugins/input-mask/jquery.inputmask.js"></script>
  <script src="dist/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
  <script src="dist/plugins/input-mask/jquery.inputmask.extensions.js"></script>
  <script src="dist/plugins/timepicker/bootstrap-timepicker.min.js"></script>
  <script src="dist/plugins/iCheck/icheck.min.js"></script>


  <!-- ChartJS 1.0.1 -->
<script src="dist/plugins/chartjs/Chart.min.js"></script>

 <script src="dist/plugins/chartjs/Chart.bundle.js"></script>
       
<script type="text/javascript" src="libs/chartjs/chartjs-plugin-colorschemes.js"></script>


<script>
$(function () {
  //Initialize Select2 Elements
  $(".select2").select2();

  //Datemask dd/mm/yyyy
  $("#datemask").inputmask("yyyy-mm-dd", {"placeholder": "yyyy/mm/dd"});
  //Datemask2 mm/dd/yyyy
  $("#datemask2").inputmask("yyyy-mm-dd", {"placeholder": "yyyy/mm/dd"});
  //Money Euro
  $("[data-mask]").inputmask();

  //Date range picker
  $('#reservation').daterangepicker();
  //Date range picker with time picker
  $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'YYYY/MM/DD h:mm A'});
  //Date range as a button
  $('#daterange-btn').daterangepicker(
      {
        ranges: {
          'Hari Ini': [moment(), moment()],
          'Kemarin': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Akhir 7 Hari': [moment().subtract(6, 'days'), moment()],
          'Akhir 30 Hari': [moment().subtract(29, 'days'), moment()],
          'Bulan Ini': [moment().startOf('month'), moment().endOf('month')],
          'Akhir Bulan': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        startDate: moment().subtract(29, 'days'),
        endDate: moment()
      },
      function (start, end) {
        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
      }
  );

  //Date picker
  $('#datepicker').datepicker({
    autoclose: true
  });

 $('.datepicker').datepicker({
  dateFormat: 'yyyy-mm-dd'
});

 //Date picker 2
 $('#datepicker2').datepicker('update', new Date());

  $('#datepicker2').datepicker({
    autoclose: true
  });

 $('.datepicker2').datepicker({
  dateFormat: 'yyyy-mm-dd'
});


  //iCheck for checkbox and radio inputs
  $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
    checkboxClass: 'icheckbox_minimal-blue',
    radioClass: 'iradio_minimal-blue'
  });
  //Red color scheme for iCheck
  $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
    checkboxClass: 'icheckbox_minimal-red',
    radioClass: 'iradio_minimal-red'
  });
  //Flat red color scheme for iCheck
  $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
    checkboxClass: 'icheckbox_flat-green',
    radioClass: 'iradio_flat-green'
  });

  //Colorpicker
  $(".my-colorpicker1").colorpicker();
  //color picker with addon
  $(".my-colorpicker2").colorpicker();

  //Timepicker
  $(".timepicker").timepicker({
    showInputs: false
  });
});
</script>
</body>
</html>
