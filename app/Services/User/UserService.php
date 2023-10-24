<?php

namespace App\Services\User;

interface UserService
{
    public function getAll();
    public function saveUser($data);
}
