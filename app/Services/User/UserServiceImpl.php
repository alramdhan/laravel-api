<?php

namespace App\Services\User;

use App\Services\User\UserService;
use App\Repositories\User\UserRepository;

class UserServiceImpl implements UserService
{
    protected $userRepository;

    public function __construct(UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    public function getAll()
    {
        try {
            $data = $this->userRepository->all();
            return response()->json([
                'response_code' => 200,
                'message' => 'success',
                'data' => $data
            ]);
        } catch(\Throwable $th) {
            return response()->json([
                'response_code' => 500,
                'message' => $th->getMessage()
            ]);
        }
    }

    public function saveUser($data)
    {
        try {
            $data = $this->userRepository->store();
            return response()->json([
                'response_code' => 200,
                'message' => $data
            ]);
        } catch(\Throwable $th) {
            return response()->json([
                'response_code' => 500,
                'message' => $th->getMessage()
            ]);
        }
    }
}
