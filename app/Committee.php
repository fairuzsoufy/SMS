<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Committee extends Model
{

	public function UserCommittee(){

		return $this->hasMany(UserCommittee::class);
		
	}

	public function Applicant(){

		return $this->hasMany(Applicant::class);
	}

	public function InterviewQuestion(){

		return $this->hasMany(InterviewQuestion::class);
	}
    
}
