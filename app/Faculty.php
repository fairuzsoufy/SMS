<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Faculty extends Model
{

	public function Applicant(){

		return $this->hasMany(Applicant::class);
	}
    
}
