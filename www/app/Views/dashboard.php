@extends(layouts/main)

<div class="container">
    <div class="row">
        <div class="col">
            <div class="pt-3 pb-2 mb-3">
                <h1 class="pb-2 border-bottom mb-5">Dashboard</h1>

                <div class="row mb-5 g-2">
                    <div class="col">
                        <div class="card h-100">
                            <h5 class="card-header">
                                Filter
                            </h5>
                            <div class="card-body">
                                <form action="/">
                                    <div class="mb-3 row">
                                        <label for="from-date" class="col-sm-12 col-md-4 col-form-label">From</label>
                                        <div class="col-sm-12 col-md-8">
                                            <input type="date" name="from" class="form-control" id="from-date" value="<?= $fromDate; ?>"/>
                                        </div>
                                    </div>
                                    <div class="mb-3 row">
                                        <label for="to-date" class="col-sm-12 col-md-4 col-form-label">To</label>
                                        <div class="col-sm-12 col-md-8">
                                            <input type="date" name="to" class="form-control" id="to-date" value="<?= $toDate; ?>" />
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col-sm-12 col-md-8 d-grid">
                                            <button type="submit" class="btn btn-primary mb-1">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">By default data for last month only</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <h5 class="card-header">
                                Orders
                            </h5>
                            <div class="card-body d-flex align-items-center justify-content-center">
                               <h1><?= $ordersQty; ?></h1>
                            </div>
                            <div class="card-footer text-center">
                                <small>All <a href="/orders">orders</a></small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100">
                            <h5 class="card-header">
                                New customers
                            </h5>
                            <div class="card-body d-flex align-items-center justify-content-center text-secondary">
                               <h1><?= $customersQty; ?></h1>
                            </div>
                            <div class="card-footer text-center">
                                <small>Go <a href="/customers">here</a> to see all customers</small>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card h-100 text-white bg-dark">
                            <h5 class="card-header">
                                Revenue for the period
                            </h5>
                            <div class="card-body d-flex align-items-center justify-content-center">
                                <h4><?=number_format(num: $revenue, thousands_separator: ',')?> kr</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <canvas id="customers-orders-chart" class="my-4 w-100" height="400px"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
<script>
    let ctx = document.getElementById('customers-orders-chart');
    const data = <?= json_encode($customerOrdersGraphData, JSON_PRETTY_PRINT); ?>;
    const cfg = {
        type: 'line',
        data: {
            datasets: [{
                label: 'Customers',
                data: data,
                parsing: {
                    yAxisKey: 'customers'
                },
                borderColor: 'rgb(10, 94, 214)',
                backgroundColor: 'rgba(10, 94, 214, 0.5)',
                cubicInterpolationMode: 'monotone'
            }, {
                label: 'Orders',
                data: data,
                parsing: {
                    yAxisKey: 'orders'
                },
                borderColor: 'rgb(255, 0, 0)',
                backgroundColor: 'rgba(255, 0, 0, 0.5)',
                cubicInterpolationMode: 'monotone'
            }]
        },
    };
    let myChart = new Chart(ctx, cfg);
</script>
