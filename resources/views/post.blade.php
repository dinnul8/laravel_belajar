@extends('layouts.main')

@section('container')

    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-8">
                <h1 class="mb-4">{{ $post->title }}</h1>
                <p>By. <a href="/blog?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/blog?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>        
                
                @if ($post->image)
                <div style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}" class="img-fluid">
                </div>
                @else
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid">
                @endif

                <article class="my-4 fs-6">
                {!! $post->body !!}
                </article>

                <a href='/blog' class="d-block mt-3"> Back to Main Blog</a>
            </div>
        </div>
    </div>

        {{-- <h1>{{ $post->title }}</h1>

        <p>By. <a href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
        
        {!! $post->body !!}
    
    <a href='/blog' class="d-block mt-3"> Back to Main Blog</a> --}}
@endsection