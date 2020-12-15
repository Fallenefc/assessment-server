<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// CRUD:

// 1. Get all columns
// 2. Create a column
// 3. Update a column ?
// 4. Delete a column

Route::get('column');

// Create:
// 1. create database and migrations
// 2. create model
// 2.5 create a service? Eloquent ORM?
// 3. create controller to go get info from db
// 4. return that info

Route::get('testing-api', function() {
    return ['php' => 'sucks'];
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
