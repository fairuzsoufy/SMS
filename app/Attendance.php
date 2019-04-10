<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Attendance extends Model
{

	protected $guarded = [];

	public function get_session($applicant_id)
	{
		$Attendance = Attendance::where(['applicant_id' => $applicant_id])
								->whereDate('signed_in', Carbon::today())
								->get();

		return $Attendance;
	}

	public function get_history($applicant_id)
	{
		return Attendance::where('applicant_id', $applicant_id)->get();
	}

    public function Applicant()
    {
    	return $this->belongsTo(Applicant::class);
    }

    public function sign_in($applicant_id)
    {
    	$Attendance = Attendance::create(['applicant_id' => $applicant_id, 'signed_in' => Carbon::now()->format('Y-m-d H:i:s')]);
    }

    public function sign_out($applicant_id)
    {
    	$Attendance = Attendance::where(['applicant_id' => $applicant_id])
    							->whereDate('signed_in', Carbon::today())
    							->update(['signed_out' => Carbon::now()->format('Y-m-d H:i:s')]);
    }
}
