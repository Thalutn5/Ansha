<div class="container-fluid">
    <div class="text-center">
        <h4>Detail Pesanan</h4>
        <h5>
            <div class="badge badge-pill badge-info mb-3 text-monospace">ID Invoice : <?= $invoice['id'] ?>
        </h5>
    </div>

    <table class="table table-bordered table-hover table-striped">
        <thead class="text-center">
            <tr>
                <th>Id Barang</th>
                <th>Nama Produk</th>
                <th>Jumlah Pesanan</th>
                <th>Harga Satuan</th>
                <th>Sub-Total</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $total = 0;
            foreach ($pesanan as $psn) :
                $subtotal = $psn->jumlah_brg * $psn->harga_brg;
                $total += $subtotal;
            ?>

                <tr>
                    <td class="text-center"><?= $psn->id_brg; ?></td>
                    <td class="text-center"><?= $psn->nama_brg; ?></td>
                    <td class="text-center"><?= $psn->jumlah_brg; ?></td>
                    <td class="text-right"><?= number_format($psn->harga_brg, 0, ',', '.'); ?></td>
                    <td class="text-right"><?= number_format($subtotal, 0, ',', '.'); ?></td>
                </tr>

            <?php endforeach; ?>
        </tbody>
        <tr>
            <td colspan="3"></td>
            <td class="text-center font-weight-bold">Total</td>
            <td class="text-right font-weight-bold">Rp <?= number_format($total, 0, ',', '.'); ?></td>
        </tr>
    </table>

    <a href="<?= base_url('admin/Invoice') ?>" class="btn btn-sm btn-block btn-primary">&leftarrow; Back</a>
</div>