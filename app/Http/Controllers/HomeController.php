<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Applicant;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        
        $this->middleware('auth');

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Applicants = Applicant::orderBy('created_at', 'desc')->limit(10)->get();

        return view('home', compact('Applicants'));
    }
}
