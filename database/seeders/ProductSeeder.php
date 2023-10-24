<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;
use Ramsey\Uuid\Uuid;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i = 0; $i < 10; $i++) {
            Product::create([
                'product_id' => Uuid::uuid4(),
                'product_name' => Str::random(20),
                'price' => 50000,
                'stok' => 10,
                'image' => 'default-product.jpg'
            ]);
        }
    }
}
