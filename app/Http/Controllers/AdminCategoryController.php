<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Str;

class AdminCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.categories.index', [
            'categories' => Category::all()
        ]);
        // return view('dashboard.posts.index', [
        //     'categories' => Category::where('user_id', auth()->user()->id)->get()
        // ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.categories.create', [
            'categories' => category::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'slug' => 'required|unique:categories',
        ]);

        $validatedData['user_id'] = auth()->user()->id;

        category::create($validatedData);

        return redirect('/dashboard/categories')->with('success', 'New Category Has Been Added');
    }

    /**
     * Display the specified resource.
     */
    public function show(category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        return view('dashboard.categories.edit', [
            'category' => $category,
            'categories' => Category::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, category $category)
    {
        $rules = [
            'name' => 'required|max:255',
            'slug' => 'required|unique:categories',
        ];

        $validatedData = $request->validate($rules);

        category::where('id', $category->id)
            ->update($validatedData);

        return redirect('/dashboard/categories')->with('success', 'Post Has Been Updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(category $category)
    {
        category::destroy($category->id);

        return redirect('/dashboard/categories')->with('success', 'Category Has Been Deleted');
    }

    public function checkSlug(Request $request)
    {
        $slug = SlugService::createSlug(Post::class, 'slug', $request->name);
        return response()->json(['slug' => $slug]);
    }
}
