@extends(layouts/error)
<div class="container">
    <div class="row">
        <div class="col">
            <div class="pt-3 pb-2 mb-3">
                <h1 class="pb-2 border-bottom mb-5">Error</h1>
                <div class="card text-dark">
                    <div class="card-header">
                        <?= $e->getMessage(); ?>
                    </div>
                    <div class="card-body">
                        File: <?= $e->getFile() ?> at line <?= $e->getLine() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
