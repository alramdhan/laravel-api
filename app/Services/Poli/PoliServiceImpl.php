<?php

namespace App\Services\Poli;

use App\Services\Poli\PoliService;
use App\Repositories\Poli\PoliRepository;

class PoliServiceImpl implements PoliService
{
    private $repository;

    public function __construct(PoliRepository $repository)
    {
        $this->repository = $repository;
    }

    public function getCountPoli() {
        return $this->repository->getCountPoli();
    }

    public function getAllPoli()
    {
        return $this->repository->getAllPoli();
    }
}
