<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Services\User\UserService;
use App\Services\User\UserServiceImpl;
use App\Repositories\User\UserRepository;
use App\Repositories\User\UserRepositoryImpl;
use App\Services\Products\ProductService;
use App\Services\Products\ProductServiceImpl;
use App\Repositories\Products\ProductRepository;
use App\Repositories\Products\ProductRepositoryImpl;
use App\Services\Poli\PoliService;
use App\Services\Poli\PoliServiceImpl;
use App\Repositories\Poli\PoliRepositoryImpl;
use App\Repositories\Poli\PoliRepository;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        // Service Binding
        $this->app->bind(UserService::class, UserServiceImpl::class);
        $this->app->bind(ProductService::class, ProductServiceImpl::class);
        $this->app->bind(PoliService::class, PoliServiceImpl::class);

        // Repository Binding
        $this->app->bind(UserRepository::class, UserRepositoryImpl::class);
        $this->app->bind(ProductRepository::class, ProductRepositoryImpl::class);
        $this->app->bind(PoliRepository::class, PoliRepositoryImpl::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
    }
}
