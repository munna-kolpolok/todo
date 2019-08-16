<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Donation extends Model
{
    use SoftDeletes;
	
	protected $table = 'donations';
	
	protected $hidden = [];

	protected $guarded = [];

	protected $dates = ['deleted_at'];


	public function inbox()
    {
        return $this->belongsTo('App\Models\Inbox');
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
    public function currency()
    {
        return $this->belongsTo('App\Models\Currency');
    }

}
