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

    public function index()
    {
        $columns = Column::all();
        foreach ($columns as $column) {
            $id = $column->id;
            $column->cards = Card::where('column_id', $id)->get();
        }
        return $columns;
    }

    public function update(Request $request, $id)
    {
        $card = Card::find($id);
        $card ->update($request->all());

        $id = $request->column_id;

        if(!$id) {
            return $card;
        }

        $column = Column::find($id);
        $column->cards()->save($card);
            
        return $card;
    }

    public function destroy($id)
    {
        return Column::destroy($id);
    }
}
