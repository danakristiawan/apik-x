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
                                        <label>Nominal</label>
                                        <input type="text" class="form-control <?= form_error('nominal') ? 'is-invalid' : ''; ?>" name="nominal" value="<?= $nota['nominal']; ?>">
                                        <div class="invalid-feedback">
                                            <i class="bx bx-radio-circle"></i>
                                            <?= form_error('nominal'); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a href="<?= base_url('piutang/nota-penerimaan-piutang'); ?>" class="btn btn-outline-primary">Batal</a>
                        <button type="submit" class="btn btn-outline-primary">Simpan</button>
                    </div>

                    </form>

                </div>
            </div>
        </section>
    </div>