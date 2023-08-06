<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

            User::create([
                'name' => 'Muhammad Nurdinnulah',
                'username' => 'dinnul',
                'email' => 'muhammadnurdinnullah@gmail.com',
                'password' => bcrypt('12345')
            ]);

            // User::create([
            //     'name' => 'Nurhuda Rama Dhani',
            //     'email' => 'dhani@gmail.com',
            //     'password' => bcrypt('12345')
            // ]);
//factory
            User::factory(3)->create();

            Category::create([
                'name' => 'Web Progamming',
                'slug' => 'web-programming',
            ]);

            Category::create([
                'name' => 'Data Scientist',
                'slug' => 'data-scientist',
            ]);

            Category::create([
                'name' => 'Personal',
                'slug' => 'personal',
            ]);

            Post::factory(20)->create();

//Seeder
            // Post::create([
            //     'title' => 'Judul Pertama',
            //     'slug' => 'judul-pertama',
            //     'excerpt' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            //     'body' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh.",
            //     'category_id' => 1,
            //     'user_id' => 1 
            // ]);

            // Post::create([
            //     'title' => 'Judul Kedua',
            //     'slug' => 'judul-kedua',
            //     'excerpt' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            //     'body' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh.",
            //     'category_id' => 1,
            //     'user_id' => 1 
            // ]);

            // Post::create([
            //     'title' => 'Judul Ketiga',
            //     'slug' => 'judul-ketiga',
            //     'excerpt' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            //     'body' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh.",
            //     'category_id' => 2,
            //     'user_id' => 1 
            // ]);

            // Post::create([
            //     'title' => 'Judul Keempat',
            //     'slug' => 'judul-keempat',
            //     'excerpt' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
            //     'body' => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis leo id nisl gravida tincidunt. Duis cursus orci ut luctus auctor. Phasellus rutrum et justo vel ullamcorper. Cras vestibulum, odio finibus vehicula gravida, libero lacus suscipit nisl, id aliquet orci mi vel nulla. Curabitur et dui dolor. In aliquam ultricies leo id sollicitudin. Sed convallis bibendum nibh, quis pulvinar orci tempor vitae. Maecenas ipsum ante, ornare vel hendrerit ac, consectetur sit amet justo. Suspendisse gravida sagittis porta. Etiam ante nibh.",
            //     'category_id' => 2,
            //     'user_id' => 2 
            // ]);
    }
}
