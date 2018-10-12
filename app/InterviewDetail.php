<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class InterviewDetail extends Model
{

	protected $guarded = [];

	public function store($interview_time, $applicant_id){

		$data = InterviewDetail::updateOrInsert(
			[
				'applicant_id' => $applicant_id
			],
			[
				'interview_time_id' => $interview_time, 'applicant_id' => $applicant_id
			]);

	}

	public function Applicant(){

		return $this->belongsTo(Applicant::class);

	}

	public function InterviewTime(){

		return $this->belongsTo(InterviewTime::class);
		
	}
    
}
