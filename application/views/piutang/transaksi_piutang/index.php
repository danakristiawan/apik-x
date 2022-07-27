    <div class="page-content">

        <section class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header pb-0">
                        <div class="row">
                            <div class="col-lg-6">
                            </div>
                            <div class="col-lg-6">
                                <?= form_open(); ?>
                                <div class="input-group">
                                    <input type="text" name="uraian" class="form-control form-control" placeholder="uraian">
                                    <button class="btn btn-outline-primary" type="submit">Cari</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-small table-bordered table-hover">
                                    <thead>
                                        <tr class="text-center">
                                            <th>No</th>
                                            <th>Kode</th>
                                            <th>Nominal</th>
                                            <th>Uraian</th>
                                            <th>Tanggal</th>
                                            <th>Nomor VA</th>
                                            <th>Ket</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no = $page + 1;
                                        foreach ($transaksi as $r) : ?>
                                            <tr>
                                                <td class="text-center"><?= $no++; ?></td>
                                                <td><?= $r['kdsatker'] . $r['bulan'] . $r['tahun'] . $r['kdk'] . $r['kdj'] . $r['jns'] . $r['urut']; ?></td>
                                                <td class="text-end"><?= number_format($r['nominal'], 0, ',', '.'); ?></td>
                                                <td><?= $r['uraian']; ?></td>
                                                <td><?= date('d-m-Y', $r['tanggal']); ?></td>
                                                <td><?= $r['va']; ?></td>
                                                <td><?= $r['ket']; ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer pt-3 pb-0">
                        <?= $uraian == null ? $pagination : ''; ?>
                    </div>
                </div>
            </div>
        </section>
    </div>