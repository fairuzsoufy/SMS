<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\ApplicationStatus;



class ApplicantStatus extends Model
{

	protected $guarded = [];

	public function store($applicant_id){

		return ApplicantStatus::updateOrInsert([
													'applicant_id' 	=> $applicant_id
												],
												[
													'applicant_id'  => $applicant_id, 
													'status' 		=> ApplicationStatus::PENDING,
													'score' 		=> 0
												]);

	}

	public function update_score($request){

		$average = array_sum($request->score) / count($request->score);

		return ApplicantStatus::where('applicant_id', $request->applicant_id)->update([
										'score' 		=> $average,
										'status'		=> ApplicationStatus::PENDING,
										'feedback'		=> $request->feedback
										]);

	}

	public function update_status($request){

		$status = $request->action == "accept" ? ApplicationStatus::ACCEPTED : ApplicationStatus::REJECTED;

		return ApplicantStatus::where('applicant_id', $request->applicant_id)->update(['status' => $status]);

	}

	public function list($request){

		if($request->committee_id){

			return ApplicantStatus::whereIn('applicant_id', Applicant::select('id')->where('committee_id', $request->committee_id))->where('status', ApplicationStatus::PENDING)->get();

		}else{

			return ApplicantStatus::where('status', ApplicationStatus::PENDING)->get();
		}

	}

	public function checkStatus($student_id){

		return Applicant::get_applicant($student_id);

	}

	public function Applicant(){

		return $this->belongsTo(Applicant::class);
		
	}
    
}
