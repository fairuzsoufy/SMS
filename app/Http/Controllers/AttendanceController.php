<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pin;
use App\Applicant;
use App\Attendance;
use App\Http\Requests\AttendanceRequest;
use App\Http\Requests\SignoutRequest;
use App\Http\Requests\RefreshRequest;
use Carbon\Carbon;

class AttendanceController extends Controller
{
    public function index(Request $request)
    {
    	$sessionExists = false;

    	if($request->session()->get('student_id')){
    		$sessionExists = true;
    	}

    	return view('external.attendance', compact('sessionExists'));
    }

    public function refresh_page()
    {
    	return view('external.refresh');
    }

    public function history(Request $request)
    {
    	if(!$request->session()->get('student_id')){
    		return redirect()->route('refreshPage')->with('warning', 'There is no active session with your student ID. Try signing in below');
    	}

    	$session_id = $request->session()->get('student_id');

    	$Applicant = (new Applicant)->get_applicant($session_id);

    	$History = (new Attendance)->get_history($Applicant->first()->id);

    	return view('external.history', compact('History'));

    }

    public function session(Request $request)
    {

    	if(!$request->session()->get('student_id')){
    		return redirect()->route('refreshPage')->with('warning', 'There is no active session with your student ID. Try signing in below');
    	}

    	$session_id = $request->session()->get('student_id');

    	$Applicant = (new Applicant)->get_applicant($session_id);

    	$Attendance = (new Attendance)->get_session($Applicant->first()->id);

    	if($Attendance->isEmpty()){
    		return redirect()->route('attendance')->with('warning', 'You have not signed in today');
    	}

    	$end_time = Carbon::now()->createFromFormat('H:i:s', '15:00:00');

    	$session_duration = $end_time->diffForHumans(Carbon::now());

    	$signin_time = Carbon::parse($Attendance->first()->signed_in);

    	$signin_duration = $signin_time->diffForHumans(Carbon::now());

    	return view('external.session', compact('Attendance', 'session_duration', 'signin_duration', 'signin_time'));
    }

    public function refresh(RefreshRequest $request)
    {
    	$student_id = filter_var($request->email, FILTER_SANITIZE_NUMBER_INT);

    	$Applicant = (new Applicant)->get_applicant($student_id);

    	if($Applicant->isEmpty()){
    		return back()->with('error', 'This student ID is not registered as a delegate or member');
    	}

    	$potentialSession = (new Attendance)->get_session($Applicant->first()->id);

    	if($potentialSession->isEmpty()){
    		return redirect()->route('attendance')->with('warning', 'There is no registered session with this student ID');
    	}

    	$request->session()->put('student_id', $student_id);

    	return redirect()->route('currentSession')->with('success', 'Session successfully refreshed');
    }

    public function store(AttendanceRequest $request)
    {
    	$student_id = filter_var($request->email, FILTER_SANITIZE_NUMBER_INT);

    	$Applicant = (new Applicant)->get_applicant($student_id);

    	if($Applicant->isEmpty()){
    		return back()->with('error', 'This student ID is not registered as a delegate or member');
    	}

    	$potentialSession = (new Attendance)->get_session($Applicant->first()->id);

    	if(!$potentialSession->isEmpty()){

    		$request->session()->put('student_id', $student_id);

    		return redirect()->route('currentSession')->with('warning', 'You are already signed in');
    	}

    	if((new Pin)->check_pin($request->pin) == false){
    		return back()->with('error', 'This PIN has either already been used or is invalid');
    	}

    	$request->session()->put('student_id', $student_id);

    	$Attendance = (new Attendance)->sign_in($Applicant->first()->id);

    	return redirect()->route('currentSession')->with('success', 'Your attendance has been registered');
    }

    public function signout(SignoutRequest $request)
    {
    	$session_termination = Carbon::now()->createFromFormat('H:i:s', '16:30:00');

    	if(Carbon::now() > $session_termination){
    		return redirect()->route('attendance')->with('error', 'Sorry. The session has ended');
    	}

    	$request->session()->forget('student_id');

    	$Attendance = (new Attendance)->sign_out($request->student_id);

    	return redirect()->route('attendance')->with('success', 'You have successfully ended your session & signed out');
    }
}
