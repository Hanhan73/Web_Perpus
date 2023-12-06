<?php

use App\Http\Controllers\BukuController;
use App\Http\Controllers\emailCOntroller;
use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Auth::routes();

Route::get('admin/home', [App\Http\Controllers\HomeController::class, 'adminHome'])->name('admin.home')->middleware("is_admin");
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/data-buku', [App\Http\Controllers\BukuController::class, 'index'])->name('data-buku');
Route::get('/data-buku-user', [App\Http\Controllers\BukuController::class, 'indexuser'])->name('data-buku-user');
Route::get('/data-log', [App\Http\Controllers\BukuController::class, 'indexLog'])->name('data-log');
Route::get('/data-user', [App\Http\Controllers\BukuController::class, 'indexDTUser'])->name('data-user');
Route::get('/pinjam', [App\Http\Controllers\BukuController::class, 'pinjam'])->name('pinjam');
Route::get('/create-buku', [App\Http\Controllers\BukuController::class, 'create'])->name('create-buku');
Route::post('/simpan-buku', [App\Http\Controllers\BukuController::class, 'store'])->name('simpan-buku');
Route::get('/edit-buku/{id}', [App\Http\Controllers\BukuController::class, 'edit'])->name('edit-buku');
Route::post('/update-buku/{id}', [App\Http\Controllers\BukuController::class, 'update'])->name('update-buku');
Route::get('/delete-buku/{id}', [App\Http\Controllers\BukuController::class, 'destroy'])->name('delete-buku');
Route::get('/changeStock-buku/{id}', [App\Http\Controllers\BukuController::class, 'changeStock'])->name('changeStock-buku');
Route::get('/returnBook-buku/{id}', [App\Http\Controllers\BukuController::class, 'returnBook'])->name('returnBook-buku');
Route::get('/searchBook-buku', [App\Http\Controllers\BukuController::class, 'search'])->name('search-buku');
Route::get('/searchBook-buku-user', [App\Http\Controllers\BukuController::class, 'searchBukuUser'])->name('search-buku-user');
Route::get('/generatepdf-buku', [App\Http\Controllers\BukuController::class, 'generatepdf'])->name('generatepdf');
// Route::get('/email', [emailCOntroller::class, 'email']);
