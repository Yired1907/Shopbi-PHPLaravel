<?php


namespace App\Http\Services;


class UploadService
{
    public function store($request)
    {
        header('Access-Control-Allow-Origin: http://127.0.0.1:8000');
        if ($request->hasFile('file')) {
            try {
                $name = $request->file('file')->getClientOriginalName();
                $pathFull =  'uploads/' . date("Y/m/d");

                $request->file('file')->storeAs(
                    'public/' . $pathFull,
                    $name
                );

                return env('APP_URL') . '/storage/' . $pathFull . '/' . $name;
            } catch (\Exception $error) {
                return false;
            }
        }
    }
}
