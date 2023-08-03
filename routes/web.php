<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Users\LoginController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\ManageCartController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\SliderController;

use App\Http\Controllers\Admin\UploadController;


//Web
use App\Http\Controllers\MenuWebController;
use App\Http\Controllers\ProductWebController;
use App\Http\Controllers\MainWebController;
use App\Http\Controllers\CartController;

Route::get('admin/users/login', [LoginController::class, 'index'])->name('login');
Route::post('admin/users/login/store', [LoginController::class, 'store']);
Route::get('logout', [LoginController::class, 'logout'])->name('logout');


Route::middleware(['auth'])->group(function () {

    Route::prefix('admin')->group(function () {

        #Admin
        Route::controller(MainController::class)->group(function () {
            Route::get('/', 'index')->name('admin');
            Route::get('main', 'index');
        });


        #Menu
        Route::controller(MenuController::class)->prefix('menus')->group(function () {
            Route::get('add', 'create');
            Route::post('add', 'store')->name('menus_store');
            Route::get('list', 'index')->name('menus_index');
            Route::get('edit/{menu}', 'show')->name('menus_edit');
            Route::post('edit/{menu}', 'update')->name('menus_update');
            Route::DELETE('destroy', 'destroy')->name('menus_destroy');
        });

        #Product
        Route::controller(ProductController::class)->prefix('products')->group(function () {
            Route::get('add', 'create');
            Route::post('add', 'store')->name('products_store');
            Route::get('list', 'index')->name('products_index');
            Route::get('edit/{product}', 'show')->name('products_show');
            Route::post('edit/{product}', 'update')->name('products_update');
            Route::DELETE('destroy', 'destroy')->name('products_destroy');
        });

        #Slider
        Route::controller(SliderController::class)->prefix('sliders')->group(function () {
            Route::get('add', 'create');
            Route::post('add', 'store')->name('sliders_store');
            Route::get('list', 'index')->name('sliders_index');
            Route::get('edit/{slider}', 'show')->name('sliders_show');
            Route::post('edit/{slider}', 'update')->name('sliders_update');
            Route::DELETE('destroy', 'destroy')->name('sliders_create');
        });

        #Upload
        Route::post('upload/services', [UploadController::class, 'store']);


        #Cart
        Route::controller(ManageCartController::class)->prefix('customers')->group(function () {
            Route::get('/',  'index')->name('customers_index');
            Route::get('/view/{customer}', 'show');
            Route::delete('/destroy', 'destroy');
        });
    });
});



Route::get('/', [MainWebController::class, 'index'])->name('index');
Route::post('/services/load-product', [MainWebController::class, 'loadProduct'])->name('loadProduct');

Route::get('danh-muc/{id}-{slug}.html', [MenuWebController::class, 'index']);
Route::get('san-pham/{id}-{slug}.html', [ProductWebController::class, 'index']);

Route::post('add-cart', [CartController::class, 'index']);
Route::get('carts', [CartController::class, 'show'])->name('show_carts');
Route::post('update-cart', [CartController::class, 'update'])->name('update_cart');
Route::get('carts/delete/{id}', [CartController::class, 'remove'])->name('remove__cart');
Route::post('carts', [CartController::class, 'addCart'])->name('add_cart');
