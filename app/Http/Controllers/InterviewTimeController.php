<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Auth;
use App\InterviewTime;


class InterviewTimeController extends Controller
{

    public function __construct(){
        
        $this->middleware('auth');
        
    }

    public function index(){

    	if(!Voyager::can('add_interview_times')){
    		return redirect()->route('home')->with('warning', 'You do not have access to view this page');
    	}

    	$periods = Auth::user()->InterviewTime;

    	return view('dashboard.schedule', compact('periods'));
    }

    public function store(Request $request){

    	$messages = [
    		'date.required' => "You need to add a valid date",
    		'start.required' => "You need to add a valid start time",
    		'end.required'	=> "You need to add a valid end time",
    	];

    	$this->validate($request,[ 
    			'date' => 'required|date',
    		    'start' => 'required|date_format:H:i',
    		    'end'  => 'required|date_format:H:i'
    		], $messages);

    	$InterviewTime = (new InterviewTime)->store($request, Auth::user());

    	return back()->with('success', 'Interview times successfully added!');

    }

    public function fetch(){

        return (new InterviewTime)->getUserSchedule(Auth::user()->id);

    }

    public function fetchAll(Request $request){

        return (new InterviewTime)->getCommitteeSchedule($request->id);
    }

    public function getInterviewTimes(Request $request){

        return (new InterviewTime)->list($request->committee);

    }
}
