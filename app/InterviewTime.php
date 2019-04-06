<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;


class InterviewTime extends Model
{

	use SoftDeletes;

    protected $dates = ['deleted_at'];
    
    protected $guarded = [];

    public function store($request, $user){

    	$start = Carbon::parse($request->start);
    	$end = Carbon::parse($request->end);
    	$date = $request->date;

    	// $range = $user->UserCommittee->Committee->id == "4" ? 45 : 10;

        $range = 15;

    	while($start < $end){
    		InterviewTime::create(['user_id' => $user->id,
    			'start_time' => $start,
    			'date' => $date, 
    			]);

    		$start->addMinutes($range);
    	}

    }

    public function list($committee){

        $interview_times = InterviewTime::whereIn('user_id', UserCommittee::getModerators($committee))
                            ->whereNotIn('id', InterviewDetail::select('interview_time_id'))
                            ->pluck('start_time', 'id');

        return json_encode($interview_times);

    }

    public function getCommitteeSchedule($committee_id){

        $schedule = InterviewTime::whereIn('user_id', UserCommittee::getModerators($committee_id))->get();

        $events = [];

        foreach($schedule as $sch){
            $e = array();
            $e['id'] = $sch['id'];
            $e['start'] =  Carbon::parse($sch['date'].$sch['start_time'])->format('Y-m-d H:i:s');
            $e['end'] =  Carbon::parse($sch['date'].$sch['start_time'])->format('Y-m-d H:i:s');
            $e['color'] = '#57b846';
            if($sch->InterviewDetail == ''){
            array_push($events, $e);
            }
        }

        return json_encode($events);

    }

    public function getUserSchedule($user_id){

        $schedule = InterviewTime::where('user_id', $user_id)->get();

        $events = [];

        foreach($schedule as $sch){
            $e = array();
            $e['id'] = $sch['id'];
            $e['start'] =  Carbon::parse($sch['date'].$sch['start_time'])->format('Y-m-d H:i:s');
            $e['end'] =  Carbon::parse($sch['date'].$sch['start_time'])->format('Y-m-d H:i:s');
            $e['color'] = $sch->InterviewDetail == '' ? '#57b846' : '#fa4251';
            array_push($events, $e);
        }

        return json_encode($events);

    }

    public function User(){

    	return $this->belongsTo(User::class);

    }

    public function InterviewDetail(){

    	return $this->hasOne(InterviewDetail::class);

    }
}
