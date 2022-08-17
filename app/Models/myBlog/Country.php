<?php

namespace App\Models\myBlog;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    public $table = "country";
     public $timestamps=false;
}
