<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

/**
 * Rutas hechas por breeze
 */
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';

/**
 * Rutas propias
 */
Route::redirect('/', '/index'); //Redirigimos la ruta inicial a la del index para que sea lo primero que carguemos
//Articles
Route::get('/index', [ArticleController::class, 'index'])->name('index'); //Ver todos los articulos
Route::post('/articles', [ArticleController::class, 'store'])->name('articles.store'); //Añadir articulos nuevos
Route::get('/articles/{slug}', [ArticleController::class, 'show'])->name('articles.show'); //Vista de articulo individual
Route::put('/articles/{article}', [ArticleController::class, 'update'])->name('articles.update'); //Editar articulos
Route::delete('/articles/{article}', [ArticleController::class, 'destroy'])->name('articles.destroy'); //Eliminar articulos
//Categories
Route::get('/{slug}', [CategorieController::class, 'index'])->name('categories'); //Carga los articulos de la categoría que se le pase por URL
Route::get('/{categorieSlug}/{articleSlug}', [CategorieController::class, 'showArticle'])->name('categories.article'); //Vista de un articulo individual desde la categoría