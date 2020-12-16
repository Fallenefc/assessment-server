<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Column;
use App\Models\Card;

class CardController extends Controller
{
    //
    public function store(Request $request, $id)
    {
        $column = Column::find($id);
        $card = new Card();
        $card->title = $request->input('title');
        $card->description = $request->input('description');
        $column->cards()->save($card);
        return $card;
    }
}
