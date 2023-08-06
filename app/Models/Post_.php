<?php

namespace App\Models;


class Post 
{
    private static $blog_posts = [
        [
            "title" => "Blog Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Dinnul",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh."
        ],
        [
            "title" => "Blog Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Nurdin",
            "body" => "Integer bibendum finibus rhoncus. Phasellus fermentum ut arcu quis vulputate. Quisque dictum interdum purus vel luctus. Nullam non efficitur nibh, ut pellentesque elit. Nunc elementum mauris molestie ipsum tincidunt hendrerit. Vivamus imperdiet sit amet urna et egestas. Aenean accumsan odio ex, quis porta ante placerat id. Mauris commodo ac velit eu lacinia. Nulla tortor elit, fringilla ut varius id, luctus vitae orci.
            
            Phasellus tincidunt magna at rhoncus condimentum. Duis gravida neque non imperdiet tincidunt. Ut sagittis sapien eget sodales ornare. Curabitur ac pretium velit. Phasellus bibendum ultrices dolor, ac commodo ex aliquam eget. Quisque a ex in dolor sodales euismod."
        ]
    ];
    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
