<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\FontController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\UserController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('fontend.welcome');
});

Route::get('/checkout', [FontController::class, 'showcheckout']);
Route::get('/cart', [FontController::class, 'showcart']);
Route::get('/about', [FontController::class, 'showabout']);
Route::get('/shop', [FontController::class, 'showshop']);
Route::get('/home', [FontController::class, 'showhome']);
Route::get('/contact', [FontController::class, 'showcontact']);
Route::get('/single', [FontController::class, 'showsingle']);





Route::get('template', function () {
    return view('template.base');
});


Route::get('/beranda', [HomeController::class, 'showberanda']);
Route::get('/kategori', [HomeController::class, 'showkategori']);
Route::get('/pelanggan', [HomeController::class, 'showpelanggan']);
Route::get('/suppliyer', [HomeController::class, 'showsuppliyer']);

route::prefix('admin')->middleware('auth')->group(function () {
    Route::resource('/produk', ProdukController::class);
    Route::resource('/user', UserController::class);
});





Route::get('/login', [AuthController::class, 'showlogin'])->name('login');
Route::post('/login', [AuthController::class, 'loginprocess']);
Route::get('/logout', [AuthController::class, 'logout']);
