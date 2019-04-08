<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Applicant;
use App\Mail\MailInvitation;

class MailController extends Controller
{
	public function index(){

		$emails = MailingList::where('emailed', 0)->orderBy('id', 'DESC')->limit(49)->get();

		foreach($emails as $email){

			$record = MailingList::find($email->id);

			$record->update(['emailed' => 1]);

			Mail::send(new MailInvitation($email->email));

		}
	}
}
