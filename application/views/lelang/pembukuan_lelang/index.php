    <div class="page-content">

        <div class="row">
            <div class="col">
                <?php if ($this->session->flashdata('success')) : ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <?= $this->session->flashdata('success'); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php elseif ($this->session->flashdata('danger')) : ?>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <?= $this->session->flashdata('danger'); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>
            </div>
        </div>

        <section class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header pb-0">
                        <div class="row">
                            <div class="col-lg-6">
                            </div>
                            <div class="col-lg-6">
                                <?= form_open(); ?>
                                <div class="input-group mt-1">
                                    <input type="text" name="urut" class="form-control form-control" placeholder="nomor urut">
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
                                            <th>Jumlah</th>
                                            <th>Nominal</th>
                                            <th>Tanggal</th>
                                            <th>Ket</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no = $page + 1;
                                        foreach ($nota as $r) : ?>
                                            <tr>
                                                <td class="text-center"><?= $no++; ?></td>
                                                <td><?= $r['kdsatker'] . $r['bulan'] . $r['tahun'] . $r['kdn'] . $r['jns'] . $r['urut']; ?></td>
                                                <td class="text-end"><?= number_format($r['jumlah'], 0, ',', '.'); ?></td>
                                                <td class="text-end"><?= number_format($r['nominal'], 0, ',', '.'); ?></td>
                                                <td><?= date('d-m-Y', $r['tanggal']); ?></td>
                                                <td><?= $r['ket']; ?></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href="<?= base_url('lelang/pembukuan-lelang/detail/') . $r['id']; ?>" class="btn btn-sm btn-outline-primary pt-0 pb-0">Detail</a>
                                                        <a href="<?= base_url('lelang/pembukuan-lelang/process/') . $r['id']; ?>" class="btn btn-sm btn-outline-primary pt-0 pb-0" onclick="return confirm('Apakah Anda yakin akan memproses data ini?');">Proses</a>
                                                        <a href="<?= base_url('lelang/pembukuan-lelang/reject/') . $r['id']; ?>" class="btn btn-sm btn-outline-primary pt-0 pb-0" onclick="return confirm('Apakah Anda yakin akan menolak data ini?');">Tolak</a>
                                                    </div>
                                                </td>

                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer pt-3 pb-0">
                        <?= $urut == null ? $pagination : ''; ?>
                    </div>
                </div>
            </div>
        </section>
    </div>