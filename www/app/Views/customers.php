@extends(layouts/main)
<div class="container">
    <div class="row">
        <div class="col">
            <div class="pt-3 pb-2 mb-3">
                <h1 class="pb-2 border-bottom mb-5">All customers</h1>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Created</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($customers as $customer) : ?>
                        <tr>
                            <th scope="row"><?= $customer->id; ?></th>
                            <td><?= $customer->first_name; ?></td>
                            <td><?= $customer->last_name; ?></td>
                            <td><?= $customer->email; ?></td>
                            <td><?= $customer->created_at ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
