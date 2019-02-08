<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guest extends Model
{
  
    protected $guarded = [];


	public function store($request)
	{
		$data = Guest::updateOrCreate(
            [
            'student_id' => $request->student_id,
            ],
            [
            'name'          => ucfirst($request->first_name)." ".ucfirst($request->last_name),
            'email'         => strpos($request->email, "@miuegypt.edu.eg") ? $request->email : $request->email."@miuegypt.edu.eg",
            'phone'         => $request->phone,
            'faculty_id'    => $request->faculty_id,
            'student_id'    => $request->student_id
            ]);

	}

    public function Faculty(){

    	return $this->belongsTo(Faculty::class);
    }
}
