<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class InterviewQuestion extends Model
{

	public function getQuestions($committee_id){

		return InterviewQuestion::where('committee_id', $committee_id)->get();
	}

	public function Committee(){

		return $this->belongsTo(Committee::class);
	}
    
}
