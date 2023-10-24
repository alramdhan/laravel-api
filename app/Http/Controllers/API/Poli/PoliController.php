<?php

namespace App\Http\Controllers\API\Poli;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Services\Poli\PoliService;

class PoliController extends Controller
{
    private $service;

    public function __construct(PoliService $service)
    {
        $this->service = $service;
    }
    
    public function getCount()
    {
        return $this->service->getCountPoli();
    }

    public function getAllPoli()
    {
        return $this->service->getAllPoli();
    }
}
