<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Validator;
use App\Rules\CheckApplicantExists;
use App\ApplicantStatus;
use App\Applicant;
use App\ApplicationStatus;
use App\InterviewQuestion;

class ApplicantStatusController extends Controller
{
	public function __construct(){

		$this->middleware('auth')->except('guest');
	}

	public function index(Request $request){

		if(!Voyager::can('edit_applicant_statuses')){
			return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
		}

		$Applications = (new ApplicantStatus)->list($request);

		return view('dashboard.filtration', compact('Applications', 'request'));
	}

	public function guest(Request $request){

		$Applicant = NULL;

		if($request->student_id){

		$this->validate($request, ['student_id' => ['required', new CheckApplicantExists($request->student_id)] ]);

		$Applicant = (new ApplicantStatus)->checkStatus($request->student_id);

		}

		$statusMap = [
			ApplicationStatus::PENDING 	=> 'Pending',
			ApplicationStatus::ACCEPTED => 'Accepted',
			ApplicationStatus::REJECTED => 'Rejected' 				
		];

		$classMap = [
			ApplicationStatus::PENDING 	=> 'warning',
			ApplicationStatus::ACCEPTED => 'success',
			ApplicationStatus::REJECTED => 'danger' 
		];

		$messageMap = [
			ApplicationStatus::PENDING 	=> 'Sorry, your application is still being processed. Check back soon!',
			ApplicationStatus::ACCEPTED => 'Congratulations! Your delegate application to attend the SMS Round 14 main event has been accepted. Check your e-mail for information on how to proceed or send an e-mail to info@sms-miu.com for clarification',
			ApplicationStatus::REJECTED => 'Turn that frown into a smile! You can still apply to join our main event as a delegate. We filter our applicants based on the requirements of each committee. Unfortunately, positions are limited. And we are not always able to fit everyone in. Waiting for you at our main event!',
		];

		return view('external.status', compact('Applicant', 'statusMap', 'classMap', 'messageMap'));
	}

	public function view(Request $request){

		if(!Voyager::can('browse_applicant_statuses')){
			return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
		}

		$statusMap = [
			ApplicationStatus::PENDING 	=> 'Pending',
			ApplicationStatus::ACCEPTED => 'Accepted',
			ApplicationStatus::REJECTED => 'Rejected' 				
		];

		$Applicant = Applicant::findOrFail($request->id);

		return view('dashboard.applicants.info', compact('Applicant', 'statusMap'));

	}

	public function edit(Request $request){

		if(!Voyager::can('add_applicant_statuses')){
			return redirect()->route('home')->with('warning', 'You are not authorized to view this page');
		}

		$Applicant = Applicant::findOrFail($request->id);

		$Questions = (new InterviewQuestion)->getQuestions($Applicant->Committee->id);

		return view('dashboard.applicants.interview', compact('Applicant', 'Questions'));
	}

	public function store(Request $request){

		$messages = [
			'score.required' => "No evaluation was submitted"
		];

		$this->validate($request, [
			'score' 	=> 'required|array',
			'score.*' 	=> 'required|numeric'
		], $messages);

		$ApplicantStatus = (new ApplicantStatus)->update_score($request);

		return redirect()->route('viewSingleApplicant', ['id' => $request->applicant_id ])->with('success', 'Interview successfully completed');
	}

	public function update(Request $request){

		if($request->ajax()){

			$validator = Validator::make($request->all(), [
				'applicant_id' 	 => 'required|numeric',
				'action' => 'required|string'
			]);

			if($validator->fails()){
				return response()->json([ 'errors' => $validator->errors()->all()]);
			}

			$ApplicantStatus = (new ApplicantStatus)->update_status($request);

			return response()->json(["message" => strtoupper($request->action),
		]);

		}

		return response()->json([
			"errors" => "An error occured while attempting to handle this class. Refresh the page and try again",
		]);


	}

}

