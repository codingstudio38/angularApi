<?php

namespace App\Models\myBlog;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Userchats extends Model
{
    use HasFactory;
    protected $table = "user_chat_tbl";
    protected  $primaryKey = 'id';
}
