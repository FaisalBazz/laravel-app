<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "M Faisal Basri",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Optio obcaecati velit fugit quas vitae sequi, minus quidem quibusdam. Eaque cum soluta veritatis a optio, nam dolore tempore nostrum voluptas cumque autem ipsam ipsa enim officia ex amet quisquam, voluptate et vitae nemo repellendus. Asperiores ex architecto quo at cum quisquam velit quasi quos nobis. Necessitatibus, dolore. Sequi, alias provident quo dolorem iusto tempore aspernatur, eius nostrum quod quas consequatur itaque dolore earum ex voluptatum tempora doloremque vel unde nisi blanditiis."
        ],
        [
            "title" => "Judul Post Adit",
            "slug" => "judul-post-kedua",
            "author" => "Aditya",
            "body" => "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nulla facilis ex cupiditate ea! A dicta possimus aut quos! Ullam consectetur aperiam numquam ratione dolor nostrum tenetur assumenda sed molestiae ducimus rerum, vel similique illo delectus! Porro perspiciatis, praesentium quia quos a aliquam iure eum adipisci corporis beatae tenetur dolore, officia optio nobis veritatis blanditiis ipsa quae ut sequi earum magnam est incidunt repellendus? Nihil necessitatibus possimus aperiam repellat laboriosam ea nostrum, tempora itaque, illo eius repudiandae dolorem officia. Repellat aspernatur commodi perferendis dolore aliquid. Sequi, vero voluptates quae eveniet doloremque qui odio magni voluptate eos quisquam sit autem fugit reiciendis."
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
