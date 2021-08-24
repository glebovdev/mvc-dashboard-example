@extends(layouts/main)
<div class="container">
    <div class="row">
        <div class="col">
            <div class="pt-3 pb-2 mb-3">
                <h1 class="pb-2 border-bottom mb-5">Orders</h1>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Customer</th>
                        <th scope="col">Country</th>
                        <th scope="col">Device</th>
                        <th scope="col">Created</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($orders as $order) : ?>
                        <tr>
                            <th scope="row"><?= $order->id; ?></th>
                            <td><?= $order->customer; ?></td>
                            <td><?= $order->country; ?></td>
                            <td><?= $order->device; ?></td>
                            <td><?= $order->created_at ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
