<?php

namespace App\Repositories\Products;

use App\Repositories\Products\ProductRepository;
use App\Repositories\BaseRepository;
use App\Models\Product;

class ProductRepositoryImpl extends BaseRepository implements ProductRepository
{
    protected $model;

    public function __construct(Product $model)
    {
        $this->model = $model;
    }
}
