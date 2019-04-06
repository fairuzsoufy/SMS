<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Auth;
use App\Applicant;

class ApplicantController extends Controller
{

    public function __construct(){
        
        $this->middleware('auth');
    }

    public function index(){

    	if(!Voyager::can('add_applicants')){
    		return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
    	}

    	return view('dashboard.applicants.add');
    }

    public function view(Request $request){

        if(!Voyager::can('browse_applicants')){
            return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
        }

        $Applicants = (new Applicant)->list($request);

    	return view('dashboard.applicants.view', compact('Applicants', 'request'));
    }

    public function store(Request $request){

    	$messages = [

    				'first_name.required' 	=> 'First name field is missing',
                    'last_name.required'    => 'Last name field is missing',
    				'phone.required' 		=> 'Phone field is missing',
    				'email.required' 		=> 'E-mail field is missing',
    				'faculty_id.required' 	=> 'Faculty info is missing',
    				'student_id.required' 	=> 'Student ID field is missing',
    				'student_id.unique'		=> "Applicant already exists",
    				'committee_id.required' => 'Must pick a committee before submitting',
    				'time.required' 		=> 'Must pick an interview time before submitting'
    			];

    	$this->validate($request, 
    		[
    		'first_name' 	=> 'required|string',
    		'last_name' 	=> 'required|string',
    		'phone' 		=> 'required|string|max:11',
    		'email' 		=> 'required|string|max:255',
    		'faculty_id' 	=> 'required|numeric',
    		'student_id' 	=> 'required|string|max:10',
    		'committee_id' 	=> 'required|numeric',
    		'time' 			=> 'required|numeric',
            'avatar'        => 'sometimes|image|mimes:png,jpeg,jpg,svg,gif|max:2048'
    	    ], $messages);

    	$Applicant = (new Applicant)->store($request);

    	return back()->with('success', 'Applicant successfully added');

    }

    public function edit(Request $request){

        if(!Voyager::can('edit_applicants')){
            return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
        }

    	$Applicant = Applicant::findOrFail($request->id);

    	return view('dashboard.applicants.edit', compact('Applicant'));
    }
}
