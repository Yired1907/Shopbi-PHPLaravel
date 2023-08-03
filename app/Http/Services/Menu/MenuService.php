<?php


namespace App\Http\Services\Menu;


use App\Models\Menu;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class MenuService
{
    public function getParent()
    {
        return Menu::where('parent_id', 0)->get();
    }

    public function show() // hiển thị ra wed
    {

        return Menu::select('name', 'id', 'thumb')
            ->where('parent_id', 0)
            ->orderbyDesc('id')
            ->get();
    }

    public function getAll()
    {
        return Menu::orderbyDesc('id')->paginate(20);
    }

    public function create($request)
    {
        try {
            #$request->except('_token');
            Menu::create($request->input());
            Session::flash('success', 'Tạo danh mục thành công');
        } catch (\Exception $err) {
            Session::flash('error', 'Tạo danh mục lỗi');
            Log::info($err->getMessage());

            return false;
        }

        return true;
    }

    public function update($request, $menu): bool
    {
        try {
            $menu->fill($request->input());
            $menu->save();
            Session::flash('success', 'Cập nhật thành công');
        } catch (\Exception $err) {
            Session::flash('error', 'Cập nhật Lỗi');
            Log::info($err->getMessage());

            return false;
        }

        return true;
    }

    public function destroy($request)
    {
        $id = (int)$request->input('id');
        $menu = Menu::where('id', $id)->first();
        if ($menu) {
            return Menu::where('id', $id)->orWhere('parent_id', $id)->delete();
        }

        return false;
    }


    public function getId($id)
    {
        return Menu::where('id', $id)->where('active', 1)->firstOrFail();
    }

    public function getProduct($menu, $request)
    {
        $query = $menu->products()
            ->select('id', 'name', 'price', 'price_sale', 'thumb')
            ->where('active', 1);

        if ($request->input('price')) {
            $query->orderBy('price', $request->input('price'));
        }

        return $query
            ->orderByDesc('id')
            ->paginate(12)
            ->withQueryString();
    }
}



   // try {
        //     Menu::create([
        //         'name' => (string)$request->input('name'),
        //         'parent_id' => (int)$request->input('parent_id'),
        //         'description' => (string)$request->input('description'),
        //         'thumb' => (string)$request->input('thumb'),
        //         'content' => (string)$request->input('content'),
        //         'active' => (string)$request->input('active')
        //     ]);
        //     // dd($request);
        //     Session::flash('success', 'Tạo Danh Mục Thành Công');
        // } catch (\Exception $err) {
        //     Session::flash('error', $err->getMessage());
        //     return false;
        // }

        // return true;
        // dd($request->all());
