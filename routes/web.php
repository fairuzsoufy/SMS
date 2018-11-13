<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/status', 'ApplicantStatusController@guest')->name('checkApplication');

Route::get('/schedule', 'InterviewTimeController@index')->name('schedule');

Route::get('/recruitment/add', 'ApplicantController@index')->name('addApplicant');

Route::get('/recruitment/edit/{id}', 'ApplicantController@edit')->name('editApplicant');

Route::get('/recruitment/view', 'ApplicantController@view')->name('viewApplicants');

Route::get('/recruitment/view/{id}', 'ApplicantStatusController@view')->name('viewSingleApplicant');

Route::get('/recruitment/interview/{id}', 'ApplicantStatusController@edit')->name('interviewApplicant');

Route::get('/recruitment/add/get-interview-times/{committee}', 'InterviewTimeController@getInterviewTimes');

Route::get('/schedule/get-schedule/', 'InterviewTimeController@fetch');

Route::get('/schedule/get-full-schedule/{id}', 'InterviewTimeController@fetchAll');

Route::get('/filtration', 'ApplicantStatusController@index')->name('filtration');

Route::post('/filtration/view', 'ApplicantStatusController@index')->name('filterApplicants');

Route::post('/schedule/add', 'InterviewTimeController@store')->name('addSchedule');

Route::post('/recruitment/add/submit', 'ApplicantController@store')->name('submitApplicant');

Route::post('/recruitment/view', 'ApplicantController@view')->name('viewCommitteeApplicants');

Route::post('/recruitment/interview/submit', 'ApplicantStatusController@store')->name('submitInterview');

Route::post('/filtration/submit', 'ApplicantStatusController@update');

Route::post('/status/check', 'ApplicantStatusController@guest')->name('checkStatus');


