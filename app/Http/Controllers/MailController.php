<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Applicant;
use App\Mail\MailInvitation;
use App\MailingList;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
	public function index(){

		$emails = MailingList::where('emailed', 0)->orderBy('id', 'ASC')->limit(49)->get();

		foreach($emails as $email){

			$record = MailingList::find($email->id);

			$record->update(['emailed' => 1]);

			Mail::send(new MailInvitation($email->email));

		}
	}
}
