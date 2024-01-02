<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Categorie;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('articles', [
            'articles' => Article::paginate(4),
            'categories' => Categorie::all()
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
        //Creamos el articulo con sus respectivos elementos en la tabla article
        $article = Article::create([
            'title' => request('title'),
            'content' => request('content'),
            'slug' => request('slug')
        ]);
        //Rellenamos la tabla intermedia para indicar las categorias del articulo
        $article->categories()->sync($request->input('categories', []));

        return to_route('index');
    }

    /**
     * Display the specified resource.
     */
    public function show($slug)
    {
        //Obtenemos el articulo asociado al slug de la url
        $article = Article::where('slug', $slug)->first();
        return view('article', [
            'article' => $article,
            'categories' => Categorie::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Article $article)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Article $article)
    {
        $article->update([
            'title' => request('title'),
            'content' => request('content'),
            'slug' => request('slug')
        ]);

        // Actualizamos las categorías del artículo en la tabla intermedia
        $article->categories()->sync($request->input('categories', []));

        return to_route('index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Article $article)
    {
        $article->delete();
        return to_route('index');
    }
}
