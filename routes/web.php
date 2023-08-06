<?php


use App\Http\Controllers\AdminCategoryController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;
use App\Http\Controllers\UserAdminController;

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

Route::get('/', function () {
    return view('home', [
        'title' => 'Home',
        'active' => 'home',
    ]);
});
Route::get('/about', function () {
    return view('about', [
        'title' => 'About',
        'active' => 'about',
        'name' => 'Dinnul',
        'email' => 'dinnul@gmail.com',
        'image' => 'q.jpg'
    ]);
});

// $blog_posts = [
//     [
//         "title" => "Blog Pertama",
//         "author" => "Dinnul",
//         "body" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh."
//     ],
//     [
//         "title" => "Blog Kedua",
//         "author" => "Nurdin",
//         "body" => "Integer bibendum finibus rhoncus. Phasellus fermentum ut arcu quis vulputate. Quisque dictum interdum purus vel luctus. Nullam non efficitur nibh, ut pellentesque elit. Nunc elementum mauris molestie ipsum tincidunt hendrerit. Vivamus imperdiet sit amet urna et egestas. Aenean accumsan odio ex, quis porta ante placerat id. Mauris commodo ac velit eu lacinia. Nulla tortor elit, fringilla ut varius id, luctus vitae orci.
        
//         Phasellus tincidunt magna at rhoncus condimentum. Duis gravida neque non imperdiet tincidunt. Ut sagittis sapien eget sodales ornare. Curabitur ac pretium velit. Phasellus bibendum ultrices dolor, ac commodo ex aliquam eget. Quisque a ex in dolor sodales euismod."
//     ]
// ];

Route::get('/blog', [PostController::class, 'index']);
// halaman single post
Route::get('/posts/{post:slug}',[PostController::class, 'show']);

Route::get('/categories', function(){
    return view('categories', [
        'title' => 'Post Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function() {
    return view ('dashboard.index');
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::resource('/dashboard/categories', AdminCategoryController::class)->middleware('admin');

Route::get('/dashboard/categories/checkSlug', [AdminCategoryController::class, 'checkSlug'])->middleware('auth');

Route::resource('/dashboard/users', UserAdminController::class)->middleware('admin');

// Route::get('/categories/{category:slug}', function(Category $category){
//     return view('blog', [
//         'title' => "Post By Category : $category->name",
//         'active' => 'categories',
//         'posts' => $category->posts->load('category', 'author')
//     ]);
// });

// Route::get('/authors/{author:username}', function(User $author) {
//     return view('blog', [
//         'title' => "Post By Author : $author->name",
//         'active' => 'blog',
//         'posts' => $author->posts->load('category', 'author')
//     ]);
// });
