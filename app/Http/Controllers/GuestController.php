<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guest;

class GuestController extends Controller
{


	public function __construct(){
        
        $this->middleware('auth');
    }

    public function index()
    {
    	return view('dashboard.applicants.guest');
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
    			];

    	$this->validate($request, 
    		[
    		'first_name' 	=> 'required|string',
    		'last_name' 	=> 'required|string',
    		'phone' 		=> 'required|string|max:10',
    		'email' 		=> 'required|string|max:255',
    		'faculty_id' 	=> 'required|numeric',
    		'student_id' 	=> 'required|string|max:10',
    	    ], $messages);

    	$Guest = (new Guest)->store($request);

    	return redirect()->back()->with('success', 'Information successfully submitted');


    }
}
