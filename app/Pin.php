<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pin extends Model
{
	protected $guarded = [];

	public function generate_pins()
	{
		$digits = 4;

		for($i = 0; $i < 500; $i++){

			$digit = rand(pow(10, $digits-1), pow(10, $digits)-1);

			Pin::create(['pin' => $digit]);

		}
	}

	public function check_pin($pin)
	{
		$Pin = Pin::where(['pin' => $pin])->exists();

		if($Pin){

			$Pin = Pin::where(['pin' => $pin])->get();

			if($Pin->first()->count == 1){
				$this->use($pin);
				return true;
			}
		}

		return false;
	}

	public function use($pin)
	{
		$Pin = Pin::where(['pin' => $pin])->update(['count' => 0]);
	}
}
