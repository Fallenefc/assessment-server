<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Card extends Model
{
    protected $fillable = [
        'title',
        'description'
    ];
    use HasFactory;

    public function column()
    {
        return $this->belongsTo(Column::class);
    }
}
