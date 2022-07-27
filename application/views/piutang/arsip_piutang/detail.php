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
                                <a href="<?= base_url('piutang/arsip-piutang'); ?>" class="btn btn-outline-primary ml-2">Kembali</a>
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
                                            <th>Nominal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no = $page + 1;
                                        foreach ($detail as $r) : ?>
                                            <tr>
                                                <td class="text-center"><?= $no++; ?></td>
                                                <td><?= $r['kdsatker'] . $r['bulan'] . $r['tahun'] . $r['kdk'] . $r['kdj'] . $r['urut']; ?></td>
                                                <td class="text-end"><?= number_format($r['nominal'], 0, ',', '.'); ?></td>
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