<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Maps extends BaseController
{
    public function index()
    {
        $fileName = base_url("maps/bandarlampung.geojson");
        $file = file_get_contents($fileName);
        $file = json_decode($file);

        $features = $file->features;
        return view('maps/index',[
            'data' => $features,
        ]);
    }
}
