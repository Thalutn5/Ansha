<div class="container-fluid">
    <h4>Shopping Cart</h4>

    <table class="table table-striped table-bordered table-hover">
        <thead class="text-center">
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Jumlah</th>
                <th>Harga</th>
                <th>Sub-total</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            foreach ($this->cart->contents() as $items) : ?>

                <tr>
                    <td class="text-center"><?= $no++ ?></td>
                    <td class="text-center"><?= $items['name'] ?></td>
                    <td class="text-center"><?= $items['qty'] ?></td>
                    <td class="text-right">Rp <?= number_format($items['price'], 0, ",", ".") ?></td>
                    <td class="text-right">Rp <?= number_format($items['subtotal'], 0, ",", ".") ?></td>
                    <td class="text-center"><?= anchor('dashboard/hapusKeranjang/' . $items['rowid'], '<button class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></button>') ?></td>
                </tr>

            <?php endforeach; ?>
            <tr>
                <td colspan="3"></td>
                <td class="font-weight-bold text-center">Total</td>
                <td class="font-weight-bold text-right">Rp <?= number_format($this->cart->total(), 0, ",", ".") ?></td>
                <td></td>
            </tr>
        </tbody>
    </table>

    <div>
        <a href="<?= base_url('dashboard') ?>" class="btn btn-sm btn-primary">Back</a>
        <a href="<?= base_url('dashboard/checkout') ?>" class="btn btn-sm btn-success">Checkout</a>
    </div>
</div>