<?php

namespace App\Repositories;

class BaseRepository
{
    protected $model;

    public function __construct($model)
    {
        $this->model = $model;
    }

    public function all()
    {
        try {
            return $this->model->orderBy('created_at', 'DESC')->get();
        } catch(\Trhowable $th) {
            throw new Exception($e->message(), 1);
        }
    }

    public function store($data)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|max:255|unique:users',
                'password' => 'required|string|min:8'
            ]);
    
            if($validator->fails()) {
                return response()->json($validator->errors());
            }
    
            $user = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);

            return 'Data have been saved!';
        } catch(\Throwable $th) {
            throw new Exception($th->getMessage(), 1);
        }
    }
}
