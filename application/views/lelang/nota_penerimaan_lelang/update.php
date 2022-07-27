    <div class="page-content">

        <section class="row">
            <div class="col">
                <div class="card">

                    <?= form_open(); ?>

                    <div class="card-content">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>Jenis Nota</label>
                                        <select class="form-control" name="kode">
                                            <?php foreach ($refnota as $r) : ?>
                                                <option value="<?= $r['kode'] . $r['nama']; ?>" <?= $r['kode'] == $nota['kdn'] ? 'selected' : ''; ?>><?= $r['nama']; ?></option>
                                            <?php endforeach; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="<?= base_url('lelang/nota-penerimaan-lelang'); ?>" class="btn btn-outline-primary">Batal</a>
                        <button type="submit" class="btn btn-outline-primary">Simpan</button>
                    </div>

                    </form>

                </div>
            </div>
        </section>
    </div>