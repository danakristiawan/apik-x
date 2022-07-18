<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <div class="sidebar-header">
            <div class="d-flex justify-content-between">
                <div class="logo">
                    <a href="<?= base_url('beranda'); ?>">Apik System</a>
                </div>
                <div class="toggler">
                    <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                </div>
            </div>
        </div>

        <?php
        $ci = get_instance();
        $ci->load->model('Ref_kategori_model', 'ref_kategori');
        $ci->load->model('Ref_menu_model', 'ref_menu');
        $ci->load->model('Ref_sub_model', 'ref_sub');
        ?>

        <div class="sidebar-menu">
            <ul class="menu">

                <?php
                $kategori = $ci->ref_kategori->get();
                foreach ($kategori as $k) :
                ?>
                    <li class="sidebar-title"><?= $k['nama']; ?></li>
                    <?php
                    $menu = $ci->ref_menu->getKategoriId($k['id']);
                    foreach ($menu as $m) :
                    ?>
                        <?php if ($m['kategori_id'] == $k['id']) : ?>
                            <li class="sidebar-item <?= $m['status']; ?> <?= $this->uri->segment(1) == $m['url'] ? 'active' : ''; ?> ">
                                <a href="<?= base_url() . $m['url']; ?>" class='sidebar-link'>
                                    <i class="<?= $m['icon']; ?>"></i>
                                    <span><?= $m['nama']; ?></span>
                                </a>
                                <?php if ($m['status'] == 'has-sub') : ?>
                                    <ul class="submenu <?= $this->uri->segment(1) == $m['url'] ? 'active' : ''; ?>">
                                        <?php
                                        $sub = $ci->ref_sub->getMenuId($m['id']);
                                        foreach ($sub as $s) :
                                        ?>
                                            <?php if ($s['menu_id'] == $m['id']) : ?>
                                                <li class="submenu-item <?= $this->uri->segment(1) . '/' . $this->uri->segment(2) == $s['url'] ? 'active' : ''; ?>">
                                                    <a href="<?= base_url() . $s['url']; ?>"><?= $s['nama']; ?></a>
                                                </li>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </ul>
                                <?php endif; ?>

                            </li>
                        <?php endif; ?>
                    <?php endforeach; ?>
                <?php endforeach; ?>

            </ul>
        </div>
        <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
    </div>
</div>