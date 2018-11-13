<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use App\Applicant;

class CheckApplicantExists implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    protected $student_id;

    public function __construct($student_id)
    {
        $this->student_id = $student_id;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        
       // $Applicant = Applicant::where('student_id', $this->student_id)->get();

       // return ((Applicant::where('student_id', $this->student_id)->exists()) && !($Applicant[0]['committee_id'] == 2));
        
        return Applicant::where('student_id', $this->student_id)->exists();
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Application not found. Make sure your student ID is entered in the correct format: 2018/12345 would be 1812345';
    }
}
