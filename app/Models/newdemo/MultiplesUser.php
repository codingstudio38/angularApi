<?php

namespace App\Models\newdemo;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MultiplesUser extends Model
{
    use HasFactory;
     public $table = "multiples_user_data";
     public $timestamps = false;
}
