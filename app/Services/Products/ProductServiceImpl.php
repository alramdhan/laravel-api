<?php

namespace App\Services\Products;

use App\Services\Products\ProductService;
use App\Repositories\Products\ProductRepository;

class ProductServiceImpl implements ProductService
{
    protected $repository;

    public function __construct(ProductRepository $repository)
    {
        $this->repository = $repository;
    }

    public function getAllProducts()
    {
        try {
            $data = $this->repository->all();

            return response()->json([
                'response_code' => 200,
                'message' => 'Success',
                'list_data' => $data
            ]);
        } catch(\Throwable $th) {
            return response()->json([
                'response_code' => 500,
                'message' => $th->getMessage(),
                'list_data' => []
            ]);
        }
    }
}
