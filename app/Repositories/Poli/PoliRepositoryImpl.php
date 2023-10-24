<?php

namespace App\Repositories\Poli;

use App\Repositories\BaseRepository;
use App\Repositories\Poli\PoliRepository;
use App\Models\Poli;

class PoliRepositoryImpl extends BaseRepository implements PoliRepository
{
    protected $model;

    public function __construct(Poli $model)
    {
        $this->model = $model;
    }

    public function getCountPoli()
    {
        try {
            $c = $this->model->get()->count();

            return response()->json([
                'response_code' => 200,
                'message' => 'success',
                'data' => $c
            ]);
        } catch(\Throwable $th) {
            return response()->json([
                'response_code' => 500,
                'message' => $th->getMessage()
            ]);
        } 
    }

    public function getAllPoli()
    {
        try {
            $m = $this->model->orderBy('created_at', 'desc')->get();

            return response()->json([
                'status' => [
                    'response_code' => 200,
                    'message' => "success"
                ],
                'data' => $m
            ]);
        } catch(\Throwable $th) {
            return response()->json([
                'status' => [
                    'response_code' => 500,
                    'message' => $th->getMessage()
                ]
                ]);
        }
    }

    // public function getAllPoli()
    // {
    //     try {
    //         return response()->json([
    //             "response_code" => 200,
    //             "message" => 'success',
    //             'data' => json_encode([
    //                 "poli" => [
    //                     "id" => "1",
    //                     "nama" => "Poli 1",
    //                     "description" => "Lorem ipsum dolor sit amet, vix oblique meliore eu, eu hinc solet soleat ius. Debet utamur officiis ea per. Nonumy deseruisse contentiones est ex"
    //                 ],
    //                 "formpoli" => [
    //                     [
    //                         "id" => "8",
    //                         "id_poli" => "1",
    //                         "tipe" => "teks",
    //                         "label" => "Pertanyaan ke 1",
    //                         "placeholder" => null,
    //                         "pilihan" => null,
    //                         "cdate" => "2023-08-10 15:03:07"
    //                     ],
    //                     [
    //                         "id" => "9",
    //                         "id_poli" => "1",
    //                         "tipe" => "pilihan",
    //                         "label" => "Pertanyaan ke 2",
    //                         "placeholder" => null,
    //                         "pilihan" => "Iya;Tidak",
    //                         "cdate" => "2023-08-10 15:03:07"
    //                     ],
    //                     [
    //                         "id" => "10",
    //                         "id_poli" => "1",
    //                         "tipe" => "pilihan",
    //                         "label" => "Pertanyaan ke 3",
    //                         "placeholder" => null,
    //                         "pilihan" => "Iya;Tidak",
    //                         "cdate" => "2023-08-10 15:03:07"
    //                     ]
    //                 ],
    //                 "statuspoli" => 0
    //             ])
    //         ]);
    //     } catch(\Throwable $th) {
    //         return response()->json([
    //             "response_code" => 500,
    //             "message" => $th->getMessage()
    //         ]);
    //     }
    // }
}
