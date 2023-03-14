<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;


Route::get('/auth', function () {
    if (Auth::check()) {
        switch (Auth::user()->roles) {
            case 'ADMIN':
                return redirect(route('admin'));
                break;
            case 'STAFF':
                return redirect(route('staff'));
                break;
            case 'STUDENT':
                return redirect(route('student'));
                break;
            default:
                return view('welcome');
                break;
        }
    } else {
        return view('welcome');
    };
})->middleware(['auth']);


Route::get('/', function () {
    return view('welcome');
})->name('index')
    ->middleware(['guest']);

Route::get('/tentang', function () {
    return view('/tentang');
});

Route::get('/faq', function () {
    return view('faq');
});

Route::get('/kontak', function () {
    return view('kontak');
});


Route::prefix('admin')
    ->middleware(['auth', 'admin'])
    ->group(function () {
        Route::get('/dashboard', 'App\Http\Controllers\Admin\DashboardController@index')
            ->name('admin');
        Route::resource('data-petugas', 'App\Http\Controllers\Admin\StaffController');
        Route::resource('data-pelanggan', 'App\Http\Controllers\Admin\PelangganController');
        Route::resource('data-aktivasi', 'App\Http\Controllers\Admin\AktivasiController');
    });

Route::prefix('staff')
    ->middleware(['auth', 'staff'])
    ->group(function () {
        Route::get('/dashboard', 'App\Http\Controllers\Staff\DashboardController@index')
            ->name('staff');
            Route::resource('data-pelanggans', 'App\Http\Controllers\Staff\PelangganController');
    });

require __DIR__ . '/auth.php';
