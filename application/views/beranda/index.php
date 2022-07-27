    <div class="page-content">
        <section class="row">
            <div class="col-12 col-lg-9">

                <div class="row">
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon purple">
                                            <i class="iconly-boldShow"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Transaksi</h6>
                                        <h6 class="font-extrabold mb-0"><?= number_format($count_l + $count_p, 0, ",", "."); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon blue">
                                            <i class="iconly-boldProfile"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Nota Penerimaan</h6>
                                        <h6 class="font-extrabold mb-0"><?= number_format($count_nota_d_l + $count_nota_d_p, 0, ",", "."); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon green">
                                            <i class="iconly-boldAdd-User"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Nota Pengeluaran</h6>
                                        <h6 class="font-extrabold mb-0"><?= number_format($count_nota_k_l + $count_nota_k_p, 0, ",", "."); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body px-3 py-4-5">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="stats-icon red">
                                            <i class="iconly-boldBookmark"></i>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <h6 class="text-muted font-semibold">Pembukuan</h6>
                                        <h6 class="font-extrabold mb-0"><?= number_format($count_buku_l + $count_buku_p, 0, ",", "."); ?></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Transaksi Per Bulan</h4>
                            </div>
                            <div class="card-body">
                                <div id="chart-profile-visit"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" id="basic-table">
                    <div class="col-12 col-md-6">
                        <div class="card">
                            <div class="card-header pb-0">
                                <h5 class="card-title">Transaksi Lelang</h5>
                            </div>
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-small">
                                            <thead>
                                                <tr>
                                                    <th>Jenis</th>
                                                    <th>Debet</th>
                                                    <th>Kredit</th>
                                                    <th>Saldo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($transaksi_l as $r) :
                                                    if ($r['kdk'] == '1') {
                                                        $nama = 'Dana Pihak Ketiga';
                                                    } else if ($r['kdk'] == '2') {
                                                        $nama = 'PNBP';
                                                    } else {
                                                        $nama = 'PPh';
                                                    }
                                                ?>
                                                    <tr>
                                                        <td><?= $nama; ?></td>
                                                        <td><?= number_format($r['debet'], 0, ',', '.'); ?></td>
                                                        <td><?= number_format($r['kredit'], 0, ',', '.'); ?></td>
                                                        <td><?= number_format($r['debet'] - $r['kredit'], 0, ',', '.'); ?></td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div class="card">
                            <div class="card-header pb-0">
                                <h5 class="card-title">Transaksi Piutang</h5>
                            </div>
                            <div class="card-content">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-small">
                                            <thead>
                                                <tr>
                                                    <th>Jenis</th>
                                                    <th>Debet</th>
                                                    <th>Kredit</th>
                                                    <th>Saldo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($transaksi_p as $r) :
                                                    if ($r['kdk'] == '1') {
                                                        $nama = 'Dana Pihak Ketiga';
                                                    } else if ($r['kdk'] == '2') {
                                                        $nama = 'PNBP';
                                                    } else {
                                                        $nama = 'PPh';
                                                    }
                                                ?>
                                                    <tr>
                                                        <td><?= $nama; ?></td>
                                                        <td><?= number_format($r['debet'], 0, ',', '.'); ?></td>
                                                        <td><?= number_format($r['kredit'], 0, ',', '.'); ?></td>
                                                        <td><?= number_format($r['debet'] - $r['kredit'], 0, ',', '.'); ?></td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="col-12 col-lg-3">
                <div class="card">
                    <div class="card-header pb-0">
                        <h4>Data Rekening</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-small">
                                    <tbody>
                                        <?php foreach ($rekening as $r) : ?>
                                            <tr>
                                                <td><?= $r['nama_bank']; ?></td>
                                                <td><?= $r['nomor']; ?></td>
                                                <td><?= $r['ket']; ?></td>

                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h4>Porsi Transaksi</h4>
                    </div>
                    <div class="card-body">
                        <div id="chart-visitors-profile"></div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-body py-4 px-5 pb-0 mb-0">
                        <div class="d-flex align-items-center pb-0">
                            <div class="avatar avatar-xl pb-0">
                                <img src="<?= base_url(); ?>assets/images/user.png" alt="Face 1">
                            </div>
                            <div class="ms-3 name">
                                <h5 class="font-bold pb-0"><?= $pegawai == NULL ? '' : $pegawai['Nama']; ?></h5>
                                <h6 class="text-muted mb-0 pb-0">Verifikator</h6>
                            </div>
                        </div>
                    </div>
                    <div class="card-body pt-0 mt-0 pb-0">
                        <div class="table-responsive pt-0">
                            <table class="table table-small pt-0 pb-0">
                                <tbody>
                                    <tr>
                                        <td><?= $pegawai == NULL ? '' : $pegawai['KdSatker']; ?></td>
                                        <td><?= $pegawai == NULL ? '' : $pegawai['NamaSatker']; ?></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>