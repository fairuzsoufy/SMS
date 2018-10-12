<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\User;


class UserCommittee extends Model
{

	use SoftDeletes;

    protected $dates = ['deleted_at'];


    public static function getModerators($committee_id){

    	return UserCommittee::select('user_id')
                            ->where('committee_id', $committee_id)
                            ->whereIn('user_id', 
                            User::select('user_id')->where('role_id', 3))
                            ->get();

    }

    public function Committee(){

    	return $this->belongsTo(Committee::class);
    	
    }

    public function User(){

    	return $this->belongsTo(User::class);

    }
    
}
