<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        User::create([
            'name' => 'Faisal Basri',
            'username' => 'faisalbasri',
            'email' => 'faisalBasri@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'Hari Dwi',
        //     'email' => 'Hari Dwi@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates sapiente sunt iusto temporibus autem, voluptatum porro. Doloremque nihil enim veritatis porro facilis magni, suscipit consequatur maxime distinctio iste quisquam nemo minus. Exercitationem reprehenderit quis ut non nihil deleniti odit iste, ab consequatur voluptates quisquam sapiente asperiores officiis animi placeat a tempore natus eveniet eos veniam provident quae maxime sunt minus. Commodi nobis harum minus impedit numquam cum accusantium? Possimus tempore, porro atque consectetur beatae hic nulla. Minus mollitia doloribus, distinctio tempore, laboriosam aliquid aliquam et incidunt sint placeat ratione excepturi ipsum aperiam laudantium deserunt.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates sapiente sunt iusto temporibus autem, voluptatum porro. Doloremque nihil enim veritatis porro facilis magni, suscipit consequatur maxime distinctio iste quisquam nemo minus. Exercitationem reprehenderit quis ut non nihil deleniti odit iste, ab consequatur voluptates quisquam sapiente asperiores officiis animi placeat a tempore natus eveniet eos veniam provident quae maxime sunt minus. Commodi nobis harum minus impedit numquam cum accusantium? Possimus tempore, porro atque consectetur beatae hic nulla. Minus mollitia doloribus, distinctio tempore, laboriosam aliquid aliquam et incidunt sint placeat ratione excepturi ipsum aperiam laudantium deserunt.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates sapiente sunt iusto temporibus autem, voluptatum porro. Doloremque nihil enim veritatis porro facilis magni, suscipit consequatur maxime distinctio iste quisquam nemo minus. Exercitationem reprehenderit quis ut non nihil deleniti odit iste, ab consequatur voluptates quisquam sapiente asperiores officiis animi placeat a tempore natus eveniet eos veniam provident quae maxime sunt minus. Commodi nobis harum minus impedit numquam cum accusantium? Possimus tempore, porro atque consectetur beatae hic nulla. Minus mollitia doloribus, distinctio tempore, laboriosam aliquid aliquam et incidunt sint placeat ratione excepturi ipsum aperiam laudantium deserunt.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perferendis, suscipit, nemo beatae quibusdam incidunt voluptates sapiente sunt iusto temporibus autem, voluptatum porro. Doloremque nihil enim veritatis porro facilis magni, suscipit consequatur maxime distinctio iste quisquam nemo minus. Exercitationem reprehenderit quis ut non nihil deleniti odit iste, ab consequatur voluptates quisquam sapiente asperiores officiis animi placeat a tempore natus eveniet eos veniam provident quae maxime sunt minus. Commodi nobis harum minus impedit numquam cum accusantium? Possimus tempore, porro atque consectetur beatae hic nulla. Minus mollitia doloribus, distinctio tempore, laboriosam aliquid aliquam et incidunt sint placeat ratione excepturi ipsum aperiam laudantium deserunt.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
