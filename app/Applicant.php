<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\InterviewDetail;
use App\ApplicantStatus;

class Applicant extends Model
{

	use SoftDeletes;

    protected $dates = ['deleted_at'];

    protected $guarded = [];

    public function store($request){

        $data = Applicant::updateOrCreate(
            [
            'student_id' => $request->student_id,
            ],
            [
            'name'          => ucfirst($request->first_name)." ".ucfirst($request->last_name),
            'email'         => strpos($request->email, "@miuegypt.edu.eg") ? $request->email : $request->email."@miuegypt.edu.eg",
            'phone'         => $request->phone,
            'faculty_id'    => $request->faculty_id,
            'committee_id'  => $request->committee_id,
            'student_id'    => $request->student_id
            ]);

        if(!is_null($request->avatar)){

            $avatarName = '_avatar'.time().'.'.request()->avatar->getClientOriginalExtension();

            $request->avatar->storeAs('public/users/applicants', $avatarName);

            $Applicant = Applicant::find($data->id);

            $Applicant->avatar = 'users/applicants/'.$avatarName;

            $Applicant->save();

        }

        $InterviewDetail = (new InterviewDetail)->store($request->time, $data->id);

        $ApplicantStatus = (new ApplicantStatus)->store($data->id);

    }

    public function list($request){

        if($request->committee_id){

            return Applicant::where('committee_id', $request->committee_id)->get();

        }else{

           return Applicant::all(); 
        }
        
    }

    public static function get_applicant($student_id){
        
        return Applicant::where('student_id', $student_id)->get();
    }

    public function Faculty(){

    	return $this->belongsTo(Faculty::class);
    }

    public function InterviewDetail(){

    	return $this->hasOne(InterviewDetail::class);
    }

    public function ApplicantStatus(){

    	return $this->hasOne(ApplicantStatus::class);
    	
    }

    public function Committee(){

        return $this->belongsTo(Committee::class);
    }

    public function Attendance()
    {
        return $this->hasMany(Attendance::class);
    }
    
}
