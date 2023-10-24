<?php

namespace App\Repositories\User;

use App\Repositories\User\UserRepository;
use App\Repositories\BaseRepository;
use App\Models\User;

class UserRepositoryImpl extends BaseRepository implements UserRepository
{
    protected $model;

    public function __construct(User $model)
    {
        $this->model = $model;
    }
}
