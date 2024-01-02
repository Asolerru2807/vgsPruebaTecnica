<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Categorie;
use Illuminate\Http\Request;

class CategorieController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($slug)
    {
        //Obtenemos la categoria asociada al slug de la url y los articulos de la misma
        $categorie = Categorie::where('slug', $slug)->first();
        $articles = $categorie->articles;
        return view('categories', [
            'categorie' => $categorie,
            'articles' => $articles
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Categorie $categorie)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Categorie $categorie)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Categorie $categorie)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Categorie $categorie)
    {
        //
    }

    /**
     * Muestra un articulo asociado a la categoría
     */
    public function showArticle($categorieSlug, $articleSlug)
    {
        $article = Article::where('slug', $articleSlug)->first();
        return view('article', [
            'article' => $article,
            'categories' => Categorie::all()
        ]);
    }
}
