 <footer>
     <div class="footer clearfix mb-0 text-muted">
         <div class="float-start">
             <p>2022 &copy; Bagian Keuangan</p>
         </div>
         <div class="float-end">

         </div>
     </div>
 </footer>
 </div>

 </div>
 <script src="<?= base_url(); ?>assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
 <script src="<?= base_url(); ?>assets/js/bootstrap.bundle.min.js"></script>
 <script src="<?= base_url(); ?>assets/js/main.js"></script>
 <script src="<?= base_url(); ?>assets/vendors/apexcharts/apexcharts.js"></script>
 <script>
     var optionsProfileVisit = {
         annotations: {
             position: 'back'
         },
         dataLabels: {
             enabled: false
         },
         chart: {
             type: 'bar',
             height: 300
         },
         fill: {
             opacity: 1
         },
         plotOptions: {},
         series: [{
             name: 'transaksi',
             data: [
                 <?php foreach ($grafik_bar as $r) : ?>
                     <?= $r['jumlah'] . "," ?>
                 <?php endforeach; ?>
             ]
         }],
         colors: '#435ebe',
         xaxis: {
             categories: [
                 <?php foreach ($grafik_bar as $r) : ?> "<?= $r['bulan']; ?>",
                 <?php endforeach; ?>
             ],
         },
     }
     let optionsVisitorsProfile = {
         series: [
             <?= $grafik_pie_l['jumlah']; ?>, <?= $grafik_pie_p['jumlah']; ?>
         ],
         labels: ['Lelang', 'Piutang'],
         colors: ['#435ebe', '#55c6e8'],
         chart: {
             type: 'donut',
             width: '100%',
             height: '350px'
         },
         legend: {
             position: 'bottom'
         },
         plotOptions: {
             pie: {
                 donut: {
                     size: '30%'
                 }
             }
         }
     }

     var chartProfileVisit = new ApexCharts(document.querySelector("#chart-profile-visit"), optionsProfileVisit);
     var chartVisitorsProfile = new ApexCharts(document.getElementById('chart-visitors-profile'), optionsVisitorsProfile);

     chartProfileVisit.render();
     chartVisitorsProfile.render();
 </script>
 </body>

 </html>