<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Maps extends BaseController
{
    public function index()
    {
        helper('form');
        $model = new \App\Models\DataModel();
        $fileName = base_url("maps/balam.geojson");
        $file = file_get_contents($fileName);
        $file = json_decode($file);

        $features = $file->features;

        $idMasterData = 1;
        if($this->request->getPost())
        {
            $idMasterData = $this->request->getPost('master');
        }

        foreach($features as $index => $feature){
            $kode_wilayah = $feature->properties->kode;
            $data = $model->where('id_master_data',$idMasterData)
                    ->where('kode_wilayah',$kode_wilayah)
                    ->first();

            if($data){
                $features[$index]->properties->nilai= $data->nilai; 
            }
        };

        $nilaiMax = $model->select('MAX(nilai) AS nilai')->where('id_master_data',$idMasterData)->first()->nilai;
        $MasterDataModel = new \App\Models\MasterDataModel();
        $masterData = $MasterDataModel->find($idMasterData);
        $allMasterData = $MasterDataModel->findAll();

        $masterDataMenu = [];
        foreach($allMasterData as $md){
            $masterDataMenu[$md->id] = $md->nama;
        }

        return view('maps/index',[
            'data' => $features,
            'nilaiMax'=>$nilaiMax,
            'masterData'=> $masterData,
            'masterDataMenu'=> $masterDataMenu,

        ]);
    }
}
