<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ColumnController;
use App\Http\Controllers\CardController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::get('/columns', 'ColumnController@index');
// Route::post('/columns', 'ColumnController@store');
// Route::put('/columns', 'ColumnController@update');
// Route::delete('/columns', 'ColumnController@destroy');

Route::middleware(['cors'])->group(function(){
    Route::get('/columns', 'App\Http\Controllers\ColumnController@index');
    Route::post('/columns', 'App\Http\Controllers\ColumnController@store');
    Route::put('/columns/{id}', 'App\Http\Controllers\ColumnController@update');
    Route::delete('/columns/{id}', 'App\Http\Controllers\ColumnController@destroy');

    Route::post('/cards/{id}', 'App\Http\Controllers\CardController@store');
    Route::get('/cards', 'App\Http\Controllers\CardController@index');
    Route::put('/cards/{id}', 'App\Http\Controllers\CardController@update');
    Route::delete('/cards/{id}', 'App\Http\Controllers\CardController@destroy');

    Route::get('/dbdump', function() {
        Spatie\DbDumper\Databases\PostgreSql::create()
            ->setDbName(env('DB_DATABASE'))
            ->setUserName(env('DB_USERNAME'))
            ->setHost(env('DB_HOST'))
            ->setPassword(env('DB_PASSWORD'))
            ->dumpToFile('dump.sql');
    });
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
